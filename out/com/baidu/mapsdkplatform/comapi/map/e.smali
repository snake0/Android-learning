.class public Lcom/baidu/mapsdkplatform/comapi/map/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/mapsdkplatform/comjni/map/basemap/b;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static L:I

.field private static M:I

.field private static ap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapsdkplatform/comjni/map/basemap/JNIBaseMap;",
            ">;"
        }
    .end annotation
.end field

.field static l:J

.field private static final p:Ljava/lang/String;


# instance fields
.field private A:Lcom/baidu/mapsdkplatform/comapi/map/ai;

.field private B:Landroid/content/Context;

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapsdkplatform/comapi/map/d;",
            ">;"
        }
    .end annotation
.end field

.field private D:Lcom/baidu/mapsdkplatform/comapi/map/x;

.field private E:Lcom/baidu/mapsdkplatform/comapi/map/g;

.field private F:Lcom/baidu/mapsdkplatform/comapi/map/ae;

.field private G:Lcom/baidu/mapsdkplatform/comapi/map/ah;

.field private H:Lcom/baidu/mapsdkplatform/comapi/map/n;

.field private I:Lcom/baidu/mapsdkplatform/comapi/map/a;

.field private J:Lcom/baidu/mapsdkplatform/comapi/map/o;

.field private K:Lcom/baidu/mapsdkplatform/comapi/map/af;

.field private N:I

.field private O:I

.field private P:I

.field private Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

.field private R:Landroid/view/VelocityTracker;

.field private S:J

.field private T:J

.field private U:J

.field private V:J

.field private W:I

.field private X:F

.field private Y:F

.field private Z:Z

.field public a:F

.field private aa:J

.field private ab:J

.field private ac:Z

.field private ad:Z

.field private ae:F

.field private af:F

.field private ag:F

.field private ah:F

.field private ai:J

.field private aj:J

.field private ak:Lcom/baidu/mapsdkplatform/comapi/map/f;

.field private al:Ljava/lang/String;

.field private am:I

.field private an:Lcom/baidu/mapsdkplatform/comapi/map/b;

.field private ao:Lcom/baidu/mapsdkplatform/comapi/map/c;

.field private aq:Z

.field private ar:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/baidu/mapsdkplatform/comapi/map/e$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:F

.field public c:F

.field d:Z

.field e:Z

.field f:Z

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapsdkplatform/comapi/map/l;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

.field i:J

.field j:Z

.field k:I

.field m:Z

.field n:Z

.field o:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Lcom/baidu/mapsdkplatform/comapi/map/aj;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/baidu/mapsdkplatform/comapi/map/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->p:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->l:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 10

    const-wide/16 v4, 0x0

    const/high16 v3, 0x41a80000    # 21.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->a:F

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->b:F

    iput v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->c:F

    iput-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->s:Z

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->t:Z

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->u:Z

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->v:Z

    iput-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->w:Z

    iput-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->d:Z

    iput-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->e:Z

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->f:Z

    iput-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->x:Z

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->y:Z

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/j$a;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ac:Z

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ad:Z

    iput-wide v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ai:J

    iput-wide v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->aj:J

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->aq:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ar:Ljava/util/Queue;

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->B:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->g:Ljava/util/List;

    iput-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->al:Ljava/lang/String;

    iput p3, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->am:I

    return-void
.end method

.method private O()V
    .registers 3

    const/high16 v1, 0x41a00000    # 20.0f

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->u:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->r:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->q:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->v:Z

    if-eqz v0, :cond_2e

    :cond_12
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->a:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    iput v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->a:F

    :cond_1a
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->E()Lcom/baidu/mapsdkplatform/comapi/map/ab;

    move-result-object v0

    iget v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2d

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->E()Lcom/baidu/mapsdkplatform/comapi/map/ab;

    move-result-object v0

    iput v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a:F

    invoke-virtual {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(Lcom/baidu/mapsdkplatform/comapi/map/ab;)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->c:F

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->a:F

    goto :goto_2d
.end method

.method private P()V
    .registers 4

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->m:Z

    if-nez v0, :cond_24

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->m:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->n:Z

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/map/l;

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->E()Lcom/baidu/mapsdkplatform/comapi/map/ab;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/map/l;->a(Lcom/baidu/mapsdkplatform/comapi/map/ab;)V

    goto :goto_10

    :cond_24
    return-void
.end method

.method private Q()Z
    .registers 9

    const/4 v1, 0x1

    const/high16 v7, 0x447a0000    # 1000.0f

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->j:Z

    if-nez v2, :cond_e

    :cond_c
    move v0, v1

    :cond_d
    :goto_d
    return v0

    :cond_e
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ad:Z

    iget-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->d:Z

    if-eqz v2, :cond_d

    iget-wide v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->aj:J

    iget-wide v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ai:J

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ag:F

    iget v5, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ae:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v7

    long-to-float v5, v2

    div-float/2addr v4, v5

    iget v5, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ah:F

    iget v6, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->af:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v7

    long-to-float v2, v2

    div-float v2, v5, v2

    mul-float v3, v4, v4

    mul-float/2addr v2, v2

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x43fa0000    # 500.0f

    cmpg-float v3, v2, v3

    if-lez v3, :cond_d

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->A()V

    const/16 v0, 0x22

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ah:F

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x10

    iget v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ag:F

    float-to-int v4, v4

    or-int/2addr v3, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(III)I

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->L()V

    move v0, v1

    goto :goto_d
.end method

.method private a(Landroid/content/Context;)Landroid/app/Activity;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_5

    move-object p1, v0

    :goto_4
    return-object p1

    :cond_5
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_c

    check-cast p1, Landroid/app/Activity;

    goto :goto_4

    :cond_c
    instance-of v1, p1, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1b

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    goto :goto_4

    :cond_1b
    move-object p1, v0

    goto :goto_4
.end method

.method private a(Lcom/baidu/mapsdkplatform/comapi/map/d;)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget v1, p1, Lcom/baidu/mapsdkplatform/comapi/map/d;->c:I

    iget v2, p1, Lcom/baidu/mapsdkplatform/comapi/map/d;->d:I

    iget-object v3, p1, Lcom/baidu/mapsdkplatform/comapi/map/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(IILjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/d;->a:J

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->C:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    :goto_21
    return-void

    :catch_22
    move-exception v0

    goto :goto_21
.end method

.method private b(Landroid/view/MotionEvent;)V
    .registers 7

    const/high16 v4, 0x42f00000    # 120.0f

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget-boolean v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->e:Z

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ab:J

    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ab:J

    iget-wide v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->aa:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-gez v0, :cond_63

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->X:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_5e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_5e

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->aa:J

    :goto_3c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->X:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0, v2, v3, v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(III)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Z:Z

    goto :goto_8

    :cond_5e
    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ab:J

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->aa:J

    goto :goto_3c

    :cond_63
    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ab:J

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->aa:J

    goto :goto_3c
.end method

.method private b(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->E:Lcom/baidu/mapsdkplatform/comapi/map/g;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->E:Lcom/baidu/mapsdkplatform/comapi/map/g;

    invoke-virtual {v0, p2}, Lcom/baidu/mapsdkplatform/comapi/map/g;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->E:Lcom/baidu/mapsdkplatform/comapi/map/g;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/g;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->b(J)V

    goto :goto_4
.end method

.method private c(Landroid/view/MotionEvent;)Z
    .registers 11

    const/high16 v8, 0x40400000    # 3.0f

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget-boolean v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->e:Z

    if-eqz v0, :cond_e

    move v2, v3

    :cond_d
    :goto_d
    return v2

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Lcom/baidu/mapsdkplatform/comapi/map/e;->l:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x12c

    cmp-long v0, v0, v4

    if-gez v0, :cond_1d

    move v2, v3

    goto :goto_d

    :cond_1d
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->o:Z

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/map/l;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v2, v4}, Lcom/baidu/mapsdkplatform/comapi/map/e;->b(II)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/map/l;->d(Lcom/baidu/mapapi/model/inner/GeoPoint;)V

    goto :goto_27

    :cond_45
    move v2, v3

    goto :goto_d

    :cond_47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->X:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensity()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_7f

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensity()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v6

    :goto_6c
    double-to-float v0, v0

    iget-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Z:Z

    if-eqz v1, :cond_85

    div-float v1, v4, v0

    cmpg-float v1, v1, v8

    if-gtz v1, :cond_85

    div-float v0, v5, v0

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_85

    move v2, v3

    goto :goto_d

    :cond_7f
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensity()F

    move-result v0

    float-to-double v0, v0

    goto :goto_6c

    :cond_85
    iput-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Z:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    if-gez v1, :cond_94

    move v1, v2

    :cond_94
    if-gez v0, :cond_97

    move v0, v2

    :cond_97
    iget-boolean v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->d:Z

    if-eqz v3, :cond_d

    sget v3, Lcom/baidu/mapapi/map/BaiduMap;->mapStatusReason:I

    or-int/lit8 v3, v3, 0x1

    sput v3, Lcom/baidu/mapapi/map/BaiduMap;->mapStatusReason:I

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->P()V

    const/4 v3, 0x3

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0, v3, v2, v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(III)I

    goto/16 :goto_d
.end method

.method private d(Landroid/view/MotionEvent;)Z
    .registers 10

    const/high16 v7, 0x41200000    # 10.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->o:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/map/l;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/baidu/mapsdkplatform/comapi/map/e;->b(II)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/baidu/mapsdkplatform/comapi/map/l;->e(Lcom/baidu/mapapi/model/inner/GeoPoint;)V

    goto :goto_e

    :cond_2c
    iput-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->o:Z

    :goto_2e
    return v1

    :cond_2f
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget-boolean v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->e:Z

    if-nez v0, :cond_82

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ab:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x190

    cmp-long v0, v3, v5

    if-gez v0, :cond_82

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->X:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v7

    if-gez v0, :cond_82

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Y:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v7

    if-gez v0, :cond_82

    move v0, v1

    :goto_61
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->L()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v4, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    if-nez v0, :cond_80

    if-gez v4, :cond_73

    move v4, v2

    :cond_73
    if-gez v3, :cond_7e

    move v0, v2

    :goto_76
    const/4 v3, 0x5

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v4

    invoke-virtual {p0, v3, v2, v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(III)I

    goto :goto_2e

    :cond_7e
    move v0, v3

    goto :goto_76

    :cond_80
    move v1, v2

    goto :goto_2e

    :cond_82
    move v0, v2

    goto :goto_61
.end method

.method private e(FF)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->j:Z

    if-nez v0, :cond_c

    :cond_a
    move v0, v1

    :goto_b
    return v0

    :cond_c
    iput-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ac:Z

    float-to-int v0, p1

    float-to-int v3, p2

    invoke-virtual {p0, v0, v3}, Lcom/baidu/mapsdkplatform/comapi/map/e;->b(II)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v3

    if-eqz v3, :cond_56

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/map/l;

    invoke-interface {v0, v3}, Lcom/baidu/mapsdkplatform/comapi/map/l;->b(Lcom/baidu/mapapi/model/inner/GeoPoint;)V

    goto :goto_1c

    :cond_2c
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->e:Z

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->E()Lcom/baidu/mapsdkplatform/comapi/map/ab;

    move-result-object v0

    iget v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v2, v4

    iput v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a:F

    invoke-virtual {v3}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/baidu/mapsdkplatform/comapi/map/ab;->d:D

    invoke-virtual {v3}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/ab;->e:D

    const/16 v2, 0x12c

    invoke-virtual {p0, v0, v2}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(Lcom/baidu/mapsdkplatform/comapi/map/ab;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/baidu/mapsdkplatform/comapi/map/e;->l:J

    move v0, v1

    goto :goto_b

    :cond_54
    move v0, v2

    goto :goto_b

    :cond_56
    move v0, v2

    goto :goto_b
.end method

.method private e(Landroid/os/Bundle;)Z
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->e(Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_5
.end method

.method private f(Landroid/os/Bundle;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->d(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->e(Z)V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->z:Lcom/baidu/mapsdkplatform/comapi/map/aj;

    iget-wide v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/aj;->a:J

    invoke-virtual {v1, v2, v3}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->b(J)V

    goto :goto_3
.end method

.method private g(Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "param"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_56

    const-string v0, "param"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/map/h;->d:Lcom/baidu/mapsdkplatform/comapi/map/h;

    invoke-virtual {v2}, Lcom/baidu/mapsdkplatform/comapi/map/h;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_28

    const-string v1, "layer_addr"

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->G:Lcom/baidu/mapsdkplatform/comapi/map/ah;

    iget-wide v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/ah;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :goto_27
    return-void

    :cond_28
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/map/h;->f:Lcom/baidu/mapsdkplatform/comapi/map/h;

    invoke-virtual {v2}, Lcom/baidu/mapsdkplatform/comapi/map/h;->ordinal()I

    move-result v2

    if-lt v1, v2, :cond_3a

    const-string v1, "layer_addr"

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->G:Lcom/baidu/mapsdkplatform/comapi/map/ah;

    iget-wide v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/ah;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_27

    :cond_3a
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/map/h;->b:Lcom/baidu/mapsdkplatform/comapi/map/h;

    invoke-virtual {v2}, Lcom/baidu/mapsdkplatform/comapi/map/h;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_4c

    const-string v1, "layer_addr"

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->G:Lcom/baidu/mapsdkplatform/comapi/map/ah;

    iget-wide v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/ah;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_27

    :cond_4c
    const-string v1, "layer_addr"

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->G:Lcom/baidu/mapsdkplatform/comapi/map/ah;

    iget-wide v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/ah;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_27

    :cond_56
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/h;->d:Lcom/baidu/mapsdkplatform/comapi/map/h;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/h;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_6e

    const-string v0, "layer_addr"

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->G:Lcom/baidu/mapsdkplatform/comapi/map/ah;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/ah;->a:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_27

    :cond_6e
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/h;->f:Lcom/baidu/mapsdkplatform/comapi/map/h;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/h;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_80

    const-string v0, "layer_addr"

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->G:Lcom/baidu/mapsdkplatform/comapi/map/ah;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/ah;->a:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_27

    :cond_80
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/h;->b:Lcom/baidu/mapsdkplatform/comapi/map/h;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/h;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_92

    const-string v0, "layer_addr"

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->G:Lcom/baidu/mapsdkplatform/comapi/map/ah;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/ah;->a:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_27

    :cond_92
    const-string v0, "layer_addr"

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->G:Lcom/baidu/mapsdkplatform/comapi/map/ah;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/ah;->a:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_27
.end method

.method static l(Z)V
    .registers 7

    invoke-static {}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->b()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ap:Ljava/util/List;

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ap:Ljava/util/List;

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ap:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comjni/map/basemap/JNIBaseMap;

    iget-wide v0, v0, Lcom/baidu/mapsdkplatform/comjni/map/basemap/JNIBaseMap;->a:J

    invoke-static {v0, v1, p0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->b(JZ)V

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, v0, Lcom/baidu/mapsdkplatform/comjni/map/basemap/JNIBaseMap;->a:J

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/JNIBaseMap;->ClearLayer(JJ)V

    goto :goto_26

    :cond_3a
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->b(JZ)V

    :cond_3f
    return-void
.end method


# virtual methods
.method A()V
    .registers 4

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->m:Z

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->n:Z

    if-nez v0, :cond_25

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->n:Z

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/map/l;

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->E()Lcom/baidu/mapsdkplatform/comapi/map/ab;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/map/l;->a(Lcom/baidu/mapsdkplatform/comapi/map/ab;)V

    goto :goto_11

    :cond_25
    return-void
.end method

.method B()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->n:Z

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->m:Z

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/map/l;

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->E()Lcom/baidu/mapsdkplatform/comapi/map/ab;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/map/l;->c(Lcom/baidu/mapsdkplatform/comapi/map/ab;)V

    goto :goto_b

    :cond_1f
    return-void
.end method

.method public C()Z
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->F:Lcom/baidu/mapsdkplatform/comapi/map/ae;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/ae;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(J)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public D()Z
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ao:Lcom/baidu/mapsdkplatform/comapi/map/c;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/c;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(J)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public E()Lcom/baidu/mapsdkplatform/comapi/map/ab;
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->h()Landroid/os/Bundle;

    move-result-object v1

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/ab;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ab;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a(Landroid/os/Bundle;)V

    goto :goto_5
.end method

.method public F()Lcom/baidu/mapapi/model/LatLngBounds;
    .registers 11

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->i()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    const-string v2, "maxCoorx"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "minCoorx"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "maxCoory"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "minCoory"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v5, Lcom/baidu/mapapi/model/inner/GeoPoint;

    int-to-double v6, v0

    int-to-double v8, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/baidu/mapapi/model/inner/GeoPoint;-><init>(DD)V

    invoke-static {v5}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    move-result-object v0

    new-instance v2, Lcom/baidu/mapapi/model/inner/GeoPoint;

    int-to-double v4, v4

    int-to-double v6, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/baidu/mapapi/model/inner/GeoPoint;-><init>(DD)V

    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-virtual {v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v0

    goto :goto_5
.end method

.method public G()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->N:I

    return v0
.end method

.method public H()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->O:I

    return v0
.end method

.method I()Lcom/baidu/mapsdkplatform/comapi/map/ab;
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->j()Landroid/os/Bundle;

    move-result-object v1

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/ab;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ab;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a(Landroid/os/Bundle;)V

    goto :goto_5
.end method

.method public J()D
    .registers 3

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->E()Lcom/baidu/mapsdkplatform/comapi/map/ab;

    move-result-object v0

    iget-wide v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/ab;->m:D

    return-wide v0
.end method

.method K()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->m:Z

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->n:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/map/l;

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->E()Lcom/baidu/mapsdkplatform/comapi/map/ab;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/map/l;->c(Lcom/baidu/mapsdkplatform/comapi/map/ab;)V

    goto :goto_d

    :cond_21
    return-void
.end method

.method L()V
    .registers 4

    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iput-boolean v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->e:Z

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->h:D

    return-void
.end method

.method public M()Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lcom/baidu/mapsdkplatform/comapi/map/e$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ar:Ljava/util/Queue;

    return-object v0
.end method

.method public N()V
    .registers 6

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ar:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ar:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/map/e$a;

    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/e$a;->e:Landroid/os/Bundle;

    if-nez v1, :cond_21

    iget-wide v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/e$a;->a:J

    iget v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e$a;->b:I

    iget v4, v0, Lcom/baidu/mapsdkplatform/comapi/map/e$a;->c:I

    iget v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/e$a;->d:I

    invoke-static {v1, v2, v3, v4, v0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(JIII)I

    goto :goto_8

    :cond_21
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->A()V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/e$a;->e:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(Landroid/os/Bundle;)V

    goto :goto_8
.end method

.method public a(IIIIII)F
    .registers 10

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->j:Z

    if-nez v0, :cond_7

    const/high16 v0, 0x41400000    # 12.0f

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    goto :goto_6

    :cond_d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "left"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "right"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "bottom"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "top"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "hasHW"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "width"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "height"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->c(Landroid/os/Bundle;)F

    move-result v0

    goto :goto_6
.end method

.method a(III)I
    .registers 10

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->aq:Z

    if-eqz v0, :cond_15

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/e$a;

    iget-wide v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->i:J

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mapsdkplatform/comapi/map/e$a;-><init>(JIII)V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ar:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_14
    return v0

    :cond_15
    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->i:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(JIII)I

    move-result v0

    goto :goto_14
.end method

.method public a(Landroid/os/Bundle;JILandroid/os/Bundle;)I
    .registers 11

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->E:Lcom/baidu/mapsdkplatform/comapi/map/g;

    iget-wide v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/g;->a:J

    cmp-long v0, p2, v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->E:Lcom/baidu/mapsdkplatform/comapi/map/g;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jsondata"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->E:Lcom/baidu/mapsdkplatform/comapi/map/g;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/g;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "param"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->E:Lcom/baidu/mapsdkplatform/comapi/map/g;

    iget v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/g;->g:I

    :goto_22
    return v0

    :cond_23
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->D:Lcom/baidu/mapsdkplatform/comapi/map/x;

    iget-wide v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:J

    cmp-long v0, p2, v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->D:Lcom/baidu/mapsdkplatform/comapi/map/x;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/x;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jsondata"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->D:Lcom/baidu/mapsdkplatform/comapi/map/x;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/x;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "param"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->D:Lcom/baidu/mapsdkplatform/comapi/map/x;

    iget v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/x;->g:I

    goto :goto_22

    :cond_46
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->H:Lcom/baidu/mapsdkplatform/comapi/map/n;

    iget-wide v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/n;->a:J

    cmp-long v0, p2, v0

    if-nez v0, :cond_70

    const-string v0, "x"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "y"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "zoom"

    invoke-virtual {p5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->J:Lcom/baidu/mapsdkplatform/comapi/map/o;

    invoke-interface {v3, v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/map/o;->a(III)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "param"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->H:Lcom/baidu/mapsdkplatform/comapi/map/n;

    iget v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/n;->g:I

    goto :goto_22

    :cond_70
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->z:Lcom/baidu/mapsdkplatform/comapi/map/aj;

    iget-wide v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/aj;->a:J

    cmp-long v0, p2, v0

    if-nez v0, :cond_9c

    const-string v0, "x"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "y"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "zoom"

    invoke-virtual {p5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->A:Lcom/baidu/mapsdkplatform/comapi/map/ai;

    iget-object v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->B:Landroid/content/Context;

    invoke-interface {v3, v0, v1, v2, v4}, Lcom/baidu/mapsdkplatform/comapi/map/ai;->a(IIILandroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "param"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->z:Lcom/baidu/mapsdkplatform/comapi/map/aj;

    iget v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/aj;->g:I

    goto :goto_22

    :cond_9c
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public a(Lcom/baidu/mapapi/model/inner/GeoPoint;)Landroid/graphics/Point;
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->K:Lcom/baidu/mapsdkplatform/comapi/map/af;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/af;->a(Lcom/baidu/mapapi/model/inner/GeoPoint;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->C:Ljava/util/List;

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/f;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/f;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ak:Lcom/baidu/mapsdkplatform/comapi/map/f;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ak:Lcom/baidu/mapsdkplatform/comapi/map/f;

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(Lcom/baidu/mapsdkplatform/comapi/map/d;)V

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/b;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/b;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->an:Lcom/baidu/mapsdkplatform/comapi/map/b;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->an:Lcom/baidu/mapsdkplatform/comapi/map/b;

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(Lcom/baidu/mapsdkplatform/comapi/map/d;)V

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/n;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/n;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->H:Lcom/baidu/mapsdkplatform/comapi/map/n;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->H:Lcom/baidu/mapsdkplatform/comapi/map/n;

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(Lcom/baidu/mapsdkplatform/comapi/map/d;)V

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/a;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/a;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->I:Lcom/baidu/mapsdkplatform/comapi/map/a;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->I:Lcom/baidu/mapsdkplatform/comapi/map/a;

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(Lcom/baidu/mapsdkplatform/comapi/map/d;)V

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/p;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/p;-><init>()V

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(Lcom/baidu/mapsdkplatform/comapi/map/d;)V

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/ae;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ae;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->F:Lcom/baidu/mapsdkplatform/comapi/map/ae;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->F:Lcom/baidu/mapsdkplatform/comapi/map/ae;

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(Lcom/baidu/mapsdkplatform/comapi/map/d;)V

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ao:Lcom/baidu/mapsdkplatform/comapi/map/c;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ao:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(Lcom/baidu/mapsdkplatform/comapi/map/d;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->e(Z)V

    :cond_61
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/ah;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ah;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->G:Lcom/baidu/mapsdkplatform/comapi/map/ah;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->G:Lcom/baidu/mapsdkplatform/comapi/map/ah;

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(Lcom/baidu/mapsdkplatform/comapi/map/d;)V

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/g;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/g;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->E:Lcom/baidu/mapsdkplatform/comapi/map/g;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->E:Lcom/baidu/mapsdkplatform/comapi/map/g;

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(Lcom/baidu/mapsdkplatform/comapi/map/d;)V

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/x;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/x;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->D:Lcom/baidu/mapsdkplatform/comapi/map/x;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->D:Lcom/baidu/mapsdkplatform/comapi/map/x;

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(Lcom/baidu/mapsdkplatform/comapi/map/d;)V

    return-void
.end method

.method public a(FF)V
    .registers 3

    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->a:F

    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->c:F

    iput p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->b:F

    return-void
.end method

.method a(I)V
    .registers 20

    new-instance v1, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-direct {v1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(I)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->i:J

    const-string v1, "com.baidu.platform.comapi.wnplatform.walkmap.WNaviBaiduMap"

    const-string v2, "setId"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->i:J

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensityDpi()I

    move-result v1

    const/16 v2, 0xb4

    if-ge v1, v2, :cond_138

    const/16 v1, 0x12

    move-object/from16 v0, p0

    iput v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->k:I

    :goto_39
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getAppSDCardPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getAppCachePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getAppSecondCachePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getMapTmpStgMax()I

    move-result v14

    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getDomTmpStgMax()I

    move-result v15

    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getItsTmpStgMax()I

    move-result v16

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensityDpi()I

    move-result v1

    const/16 v6, 0xb4

    if-lt v1, v6, :cond_160

    const-string v1, "/h/"

    :goto_5f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/cfg"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/vmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/a/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "/a/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/idrres/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/tmp/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/tmp/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->B:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_164

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v11

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->al:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->am:I

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensityDpi()I

    move-result v13

    const/16 v17, 0x0

    invoke-virtual/range {v1 .. v17}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIIII)Z

    return-void

    :cond_138
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensityDpi()I

    move-result v1

    const/16 v2, 0xf0

    if-ge v1, v2, :cond_148

    const/16 v1, 0x19

    move-object/from16 v0, p0

    iput v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->k:I

    goto/16 :goto_39

    :cond_148
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensityDpi()I

    move-result v1

    const/16 v2, 0x140

    if-ge v1, v2, :cond_158

    const/16 v1, 0x25

    move-object/from16 v0, p0

    iput v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->k:I

    goto/16 :goto_39

    :cond_158
    const/16 v1, 0x32

    move-object/from16 v0, p0

    iput v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->k:I

    goto/16 :goto_39

    :cond_160
    const-string v1, "/l/"

    goto/16 :goto_5f

    :cond_164
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Please give the right context."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method a(II)V
    .registers 3

    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->N:I

    iput p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->O:I

    return-void
.end method

.method public a(JJJJZ)V
    .registers 20

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(JJJJZ)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v1, :cond_6

    :goto_5
    return-void

    :cond_6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_15
    const-string v4, "type"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "x"

    sget v5, Lcom/baidu/mapsdkplatform/comapi/map/e;->L:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "y"

    sget v5, Lcom/baidu/mapsdkplatform/comapi/map/e;->M:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "hidetime"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "data"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_38} :catch_4c

    :goto_38
    if-nez p1, :cond_51

    const/4 v0, 0x0

    :goto_3b
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->E:Lcom/baidu/mapsdkplatform/comapi/map/g;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/g;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->b(J)V

    goto :goto_5

    :catch_4c
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_38

    :cond_51
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/baidu/mapapi/model/ParcelItem;

    invoke-direct {v1}, Lcom/baidu/mapapi/model/ParcelItem;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const-string v7, "imgdata"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v6, "imgindex"

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "imgH"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "imgW"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "hasIcon"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v5}, Lcom/baidu/mapapi/model/ParcelItem;->setBundle(Landroid/os/Bundle;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_cb

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v5, v1, [Lcom/baidu/mapapi/model/ParcelItem;

    move v1, v0

    :goto_b4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c6

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/ParcelItem;

    aput-object v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b4

    :cond_c6
    const-string v0, "icondata"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_cb
    move-object v0, v2

    goto/16 :goto_3b
.end method

.method a(Landroid/os/Handler;)V
    .registers 4

    const/16 v0, 0xfa0

    invoke-static {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/MessageCenter;->registMessage(ILandroid/os/Handler;)V

    const/16 v0, 0x27

    invoke-static {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/MessageCenter;->registMessage(ILandroid/os/Handler;)V

    const/16 v0, 0x29

    invoke-static {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/MessageCenter;->registMessage(ILandroid/os/Handler;)V

    const/16 v0, 0x31

    invoke-static {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/MessageCenter;->registMessage(ILandroid/os/Handler;)V

    const v0, 0xff09

    invoke-static {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/MessageCenter;->registMessage(ILandroid/os/Handler;)V

    const/16 v0, 0x32

    invoke-static {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/MessageCenter;->registMessage(ILandroid/os/Handler;)V

    const/16 v0, 0x3e7

    invoke-static {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/MessageCenter;->registMessage(ILandroid/os/Handler;)V

    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->i:J

    invoke-static {v0, v1, p0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/BaseMapCallback;->addLayerDataInterface(JLcom/baidu/mapsdkplatform/comjni/map/basemap/b;)V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/model/LatLngBounds;)V
    .registers 8

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p1, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    iget-object v1, p1, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v0

    invoke-static {v1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v1}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    double-to-int v0, v4

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "maxCoorx"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "minCoory"

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "minCoorx"

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "maxCoory"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0, v4}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->b(Landroid/os/Bundle;)V

    goto :goto_6
.end method

.method public a(Lcom/baidu/mapsdkplatform/comapi/map/ab;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-eqz v0, :cond_7

    if-nez p1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-virtual {p1, p0}, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a(Lcom/baidu/mapsdkplatform/comapi/map/e;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "animation"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "animatime"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(Landroid/os/Bundle;)V

    goto :goto_7
.end method

.method public a(Lcom/baidu/mapsdkplatform/comapi/map/ab;I)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p1, p0}, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a(Lcom/baidu/mapsdkplatform/comapi/map/e;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "animation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "animatime"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->aq:Z

    if-eqz v1, :cond_23

    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/map/e$a;

    invoke-direct {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/e$a;-><init>(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ar:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_23
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->A()V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(Landroid/os/Bundle;)V

    goto :goto_4
.end method

.method public a(Lcom/baidu/mapsdkplatform/comapi/map/ai;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->A:Lcom/baidu/mapsdkplatform/comapi/map/ai;

    return-void
.end method

.method public a(Lcom/baidu/mapsdkplatform/comapi/map/l;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/baidu/mapsdkplatform/comapi/map/o;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->J:Lcom/baidu/mapsdkplatform/comapi/map/o;

    return-void
.end method

.method a(Lcom/baidu/mapsdkplatform/comapi/map/z;)V
    .registers 9

    const/4 v6, 0x1

    const/high16 v2, 0x42200000    # 40.0f

    const/4 v5, 0x0

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/ab;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ab;-><init>()V

    if-nez p1, :cond_10

    new-instance p1, Lcom/baidu/mapsdkplatform/comapi/map/z;

    invoke-direct {p1}, Lcom/baidu/mapsdkplatform/comapi/map/z;-><init>()V

    :cond_10
    iget-object v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/z;->a:Lcom/baidu/mapsdkplatform/comapi/map/ab;

    iget-boolean v1, p1, Lcom/baidu/mapsdkplatform/comapi/map/z;->f:Z

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->w:Z

    iget-boolean v1, p1, Lcom/baidu/mapsdkplatform/comapi/map/z;->d:Z

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->x:Z

    iget-boolean v1, p1, Lcom/baidu/mapsdkplatform/comapi/map/z;->e:Z

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->d:Z

    iget-boolean v1, p1, Lcom/baidu/mapsdkplatform/comapi/map/z;->g:Z

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->e:Z

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0, p0}, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a(Lcom/baidu/mapsdkplatform/comapi/map/e;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/y;->a:Lcom/baidu/mapsdkplatform/comapi/map/y;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/y;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->c(I)I

    iget-boolean v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/z;->b:Z

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->s:Z

    iget-boolean v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/z;->b:Z

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->E:Lcom/baidu/mapsdkplatform/comapi/map/g;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/g;->a:J

    invoke-virtual {v0, v1, v2, v5}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(JZ)V

    :goto_47
    iget v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/z;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4f

    invoke-virtual {p0, v6}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(Z)V

    :cond_4f
    const/4 v1, 0x3

    if-ne v0, v1, :cond_72

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ak:Lcom/baidu/mapsdkplatform/comapi/map/f;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/f;->a:J

    invoke-virtual {v0, v1, v2, v5}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(JZ)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ao:Lcom/baidu/mapsdkplatform/comapi/map/c;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/c;->a:J

    invoke-virtual {v0, v1, v2, v5}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(JZ)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->F:Lcom/baidu/mapsdkplatform/comapi/map/ae;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/ae;->a:J

    invoke-virtual {v0, v1, v2, v5}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(JZ)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0, v5}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->e(Z)V

    :cond_72
    return-void

    :cond_73
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensity()F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->L:I

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensity()F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->M:I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_92
    const-string v3, "x"

    sget v4, Lcom/baidu/mapsdkplatform/comapi/map/e;->L:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "y"

    sget v4, Lcom/baidu/mapsdkplatform/comapi/map/e;->M:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "hidetime"

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_af
    .catch Lorg/json/JSONException; {:try_start_92 .. :try_end_af} :catch_c2

    :goto_af
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->E:Lcom/baidu/mapsdkplatform/comapi/map/g;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->E:Lcom/baidu/mapsdkplatform/comapi/map/g;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/g;->a:J

    invoke-virtual {v0, v1, v2, v6}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(JZ)V

    goto :goto_47

    :catch_c2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_af
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->D:Lcom/baidu/mapsdkplatform/comapi/map/x;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/x;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->D:Lcom/baidu/mapsdkplatform/comapi/map/x;

    invoke-virtual {v0, p2}, Lcom/baidu/mapsdkplatform/comapi/map/x;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->D:Lcom/baidu/mapsdkplatform/comapi/map/x;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->b(J)V

    goto :goto_4
.end method

.method public a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Landroid/os/Bundle;

    const/4 v0, 0x0

    move v1, v0

    :goto_13
    if-ge v1, v2, :cond_2a

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->g(Landroid/os/Bundle;)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    :cond_2a
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0, v3}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a([Landroid/os/Bundle;)V

    goto :goto_6
.end method

.method public a(Z)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ak:Lcom/baidu/mapsdkplatform/comapi/map/f;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/f;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(J)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ak:Lcom/baidu/mapsdkplatform/comapi/map/f;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/f;->a:J

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(JZ)V

    :cond_1b
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->r:Z

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->O()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->r:Z

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(Z)V

    goto :goto_4
.end method

.method public a(FFFF)Z
    .registers 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->O:I

    int-to-float v1, v1

    sub-float v1, v1, p2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->O:I

    int-to-float v2, v2

    sub-float v2, v2, p4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget-boolean v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->e:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    if-nez v3, :cond_dd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->c:F

    sub-float/2addr v3, v1

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->d:F

    sub-float/2addr v3, v2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_4d

    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->c:F

    sub-float/2addr v3, v1

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_d7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->d:F

    sub-float/2addr v3, v2

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_d7

    :cond_4d
    sub-float v3, v2, v1

    float-to-double v3, v3

    sub-float v5, p3, p1

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v5, v5, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->d:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v6, v6, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->c:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v7, v7, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->b:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v8, v8, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->a:F

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    sub-double/2addr v3, v5

    sub-float v5, p3, p1

    sub-float v6, p3, p1

    mul-float/2addr v5, v6

    sub-float v6, v2, v1

    sub-float v7, v2, v1

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget-wide v7, v7, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->h:D

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v7, v9

    const-wide v9, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v7, v9

    double-to-int v7, v7

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v3, v8

    const-wide v8, 0x400921ff2e48e8a7L    # 3.1416

    div-double/2addr v3, v8

    double-to-int v3, v3

    const-wide/16 v8, 0x0

    cmpl-double v4, v5, v8

    if-lez v4, :cond_bc

    const/16 v4, 0xbb8

    if-gt v7, v4, :cond_c4

    const/16 v4, -0xbb8

    if-lt v7, v4, :cond_c4

    :cond_bc
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_d1

    :cond_c4
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    :goto_c9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    if-nez v3, :cond_dd

    const/4 v1, 0x1

    :goto_d0
    return v1

    :cond_d1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    goto :goto_c9

    :cond_d7
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    goto :goto_c9

    :cond_dd
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->w:Z

    if-eqz v3, :cond_1d1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->c:F

    sub-float/2addr v3, v1

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1ab

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->d:F

    sub-float/2addr v3, v2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1ab

    invoke-direct/range {p0 .. p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->P()V

    const/4 v3, 0x1

    const/16 v4, 0x53

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(III)I

    :cond_10e
    :goto_10e
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    if-eq v3, v4, :cond_131

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iput v1, v3, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->c:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iput v2, v1, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->d:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    move/from16 v0, p1

    iput v0, v1, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->a:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    move/from16 v0, p3

    iput v0, v1, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->b:F

    :cond_131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget-boolean v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->e:Z

    if-nez v1, :cond_1a8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->N:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, v1, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->f:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->O:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, v1, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->g:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->e:Z

    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget-wide v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->h:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1a8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->b:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->a:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->b:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->a:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->d:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->c:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->d:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v4, v4, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->c:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iput-wide v1, v3, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->h:D

    :cond_1a8
    const/4 v1, 0x1

    goto/16 :goto_d0

    :cond_1ab
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->c:F

    sub-float/2addr v3, v1

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_10e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->d:F

    sub-float/2addr v3, v2

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_10e

    invoke-direct/range {p0 .. p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->P()V

    const/4 v3, 0x1

    const/16 v4, 0x57

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(III)I

    goto/16 :goto_10e

    :cond_1d1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1e6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1e6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_10e

    :cond_1e6
    sub-float v3, v2, v1

    float-to-double v3, v3

    sub-float v5, p3, p1

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v5, v5, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->d:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v6, v6, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->c:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v7, v7, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->b:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v8, v8, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->a:F

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    sub-double/2addr v3, v5

    sub-float v5, p3, p1

    sub-float v6, p3, p1

    mul-float/2addr v5, v6

    sub-float v6, v2, v1

    sub-float v7, v2, v1

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget-wide v7, v7, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->h:D

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v7, v9

    const-wide v9, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v7, v9

    double-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v8, v8, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->g:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v9, v9, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->c:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v10, v10, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->f:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v11, v11, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->a:F

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v10, v10, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->f:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v11, v11, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->a:F

    sub-float/2addr v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v11, v11, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->f:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v12, v12, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->a:F

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v11, v11, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->g:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v12, v12, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->c:F

    sub-float/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v12, v12, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->g:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v13, v13, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->c:F

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    add-double v12, v8, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v10

    mul-double/2addr v12, v5

    move/from16 v0, p1

    float-to-double v14, v0

    add-double/2addr v12, v14

    double-to-float v12, v12

    add-double/2addr v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v10

    mul-double/2addr v8, v5

    float-to-double v10, v1

    add-double/2addr v8, v10

    double-to-float v8, v8

    const-wide v9, 0x4066800000000000L    # 180.0

    mul-double/2addr v3, v9

    const-wide v9, 0x400921ff2e48e8a7L    # 3.1416

    div-double/2addr v3, v9

    double-to-int v3, v3

    const-wide/16 v9, 0x0

    cmpl-double v4, v5, v9

    if-lez v4, :cond_328

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget v9, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    if-eq v4, v9, :cond_2d6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v9, 0x7d0

    if-le v4, v9, :cond_328

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    if-ne v4, v9, :cond_328

    :cond_2d6
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->E()Lcom/baidu/mapsdkplatform/comapi/map/ab;

    move-result-object v3

    iget v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a:F

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->e:Z

    if-eqz v4, :cond_303

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v5, v9

    if-lez v4, :cond_311

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->a:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2f8

    const/4 v1, 0x0

    goto/16 :goto_d0

    :cond_2f8
    invoke-direct/range {p0 .. p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->P()V

    const/16 v3, 0x2001

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v7}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(III)I

    :cond_303
    :goto_303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iput v12, v3, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->f:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iput v8, v3, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->g:F

    goto/16 :goto_10e

    :cond_311
    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->b:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_31c

    const/4 v1, 0x0

    goto/16 :goto_d0

    :cond_31c
    invoke-direct/range {p0 .. p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->P()V

    const/16 v3, 0x2001

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v7}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(III)I

    goto :goto_303

    :cond_328
    if-eqz v3, :cond_303

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    if-eq v4, v5, :cond_340

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_303

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    if-ne v4, v5, :cond_303

    :cond_340
    const/4 v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->x:Z

    if-eqz v4, :cond_303

    sget v4, Lcom/baidu/mapapi/map/BaiduMap;->mapStatusReason:I

    or-int/lit8 v4, v4, 0x1

    sput v4, Lcom/baidu/mapapi/map/BaiduMap;->mapStatusReason:I

    invoke-direct/range {p0 .. p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->P()V

    const/16 v4, 0x2001

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v3}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(III)I

    goto :goto_303
.end method

.method public a(J)Z
    .registers 7

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/map/d;

    iget-wide v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/d;->a:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public a(Landroid/graphics/Point;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-eqz v1, :cond_3

    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_3

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ltz v1, :cond_3

    iget v0, p1, Landroid/graphics/Point;->x:I

    sput v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->L:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    sput v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->M:I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_27
    const-string v3, "x"

    sget v4, Lcom/baidu/mapsdkplatform/comapi/map/e;->L:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "y"

    sget v4, Lcom/baidu/mapsdkplatform/comapi/map/e;->M:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "hidetime"

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_44} :catch_58

    :goto_44
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->E:Lcom/baidu/mapsdkplatform/comapi/map/g;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->E:Lcom/baidu/mapsdkplatform/comapi/map/g;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/g;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->b(J)V

    const/4 v0, 0x1

    goto :goto_3

    :catch_58
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_44
.end method

.method public a(Landroid/os/Bundle;)Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/map/aj;

    invoke-direct {v1}, Lcom/baidu/mapsdkplatform/comapi/map/aj;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->z:Lcom/baidu/mapsdkplatform/comapi/map/aj;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->z:Lcom/baidu/mapsdkplatform/comapi/map/aj;

    iget v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/aj;->c:I

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->z:Lcom/baidu/mapsdkplatform/comapi/map/aj;

    iget v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/aj;->d:I

    iget-object v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->z:Lcom/baidu/mapsdkplatform/comapi/map/aj;

    iget-object v4, v4, Lcom/baidu/mapsdkplatform/comapi/map/aj;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(IILjava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->z:Lcom/baidu/mapsdkplatform/comapi/map/aj;

    iput-wide v1, v3, Lcom/baidu/mapsdkplatform/comapi/map/aj;->a:J

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->C:Ljava/util/List;

    iget-object v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->z:Lcom/baidu/mapsdkplatform/comapi/map/aj;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "sdktileaddr"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/e;->e(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/e;->f(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method a(Landroid/view/MotionEvent;)Z
    .registers 21

    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_39

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/baidu/mapsdkplatform/comapi/map/e;->c(II)Z

    move-result v4

    if-eqz v4, :cond_38

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/baidu/mapsdkplatform/comapi/map/e;->c(II)Z

    move-result v4

    if-nez v4, :cond_39

    :cond_38
    const/4 v3, 0x1

    :cond_39
    const/4 v4, 0x2

    if-ne v3, v4, :cond_501

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->O:I

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v4, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->O:I

    int-to-float v2, v2

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v5, v2, v3

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    sparse-switch v2, :sswitch_data_51c

    :goto_6d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->R:Landroid/view/VelocityTracker;

    if-nez v2, :cond_7b

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->R:Landroid/view/VelocityTracker;

    :cond_7b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->R:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->R:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    int-to-float v3, v3

    invoke-virtual {v8, v9, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->R:Landroid/view/VelocityTracker;

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->R:Landroid/view/VelocityTracker;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->R:Landroid/view/VelocityTracker;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->R:Landroid/view/VelocityTracker;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v10

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v11, v2

    cmpl-float v3, v3, v11

    if-gtz v3, :cond_de

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v8, v2

    cmpl-float v3, v3, v8

    if-gtz v3, :cond_de

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v8, v2

    cmpl-float v3, v3, v8

    if-gtz v3, :cond_de

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_492

    :cond_de
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget-boolean v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->e:Z

    if-eqz v2, :cond_233

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    if-nez v2, :cond_1fc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->c:F

    sub-float/2addr v2, v4

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_104

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->d:F

    sub-float/2addr v2, v5

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_11c

    :cond_104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->c:F

    sub-float/2addr v2, v4

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1f6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->d:F

    sub-float/2addr v2, v5

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1f6

    :cond_11c
    sub-float v2, v5, v4

    float-to-double v2, v2

    sub-float v8, v7, v6

    float-to-double v8, v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v8, v8, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->d:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v9, v9, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->c:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v10, v10, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->b:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v11, v11, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->a:F

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    sub-double/2addr v2, v8

    sub-float v8, v7, v6

    sub-float v9, v7, v6

    mul-float/2addr v8, v9

    sub-float v9, v5, v4

    sub-float v10, v5, v4

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget-wide v10, v10, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->h:D

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    div-double/2addr v10, v12

    const-wide v12, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v10, v12

    double-to-int v10, v10

    const-wide v11, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v11

    const-wide v11, 0x400921ff2e48e8a7L    # 3.1416

    div-double/2addr v2, v11

    double-to-int v2, v2

    const-wide/16 v11, 0x0

    cmpl-double v3, v8, v11

    if-lez v3, :cond_18b

    const/16 v3, 0xbb8

    if-gt v10, v3, :cond_193

    const/16 v3, -0xbb8

    if-lt v10, v3, :cond_193

    :cond_18b
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_1f0

    :cond_193
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    :goto_198
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    if-nez v2, :cond_1fc

    const/4 v2, 0x1

    :goto_19f
    return v2

    :sswitch_1a0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->T:J

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->W:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->W:I

    goto/16 :goto_6d

    :sswitch_1b4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->S:J

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->W:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->W:I

    goto/16 :goto_6d

    :sswitch_1c8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->V:J

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->W:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->W:I

    goto/16 :goto_6d

    :sswitch_1dc
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->U:J

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->W:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->W:I

    goto/16 :goto_6d

    :cond_1f0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    goto :goto_198

    :cond_1f6
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    goto :goto_198

    :cond_1fc
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2f8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->w:Z

    if-eqz v2, :cond_2f8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->c:F

    sub-float/2addr v2, v4

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2cc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->d:F

    sub-float/2addr v2, v5

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2cc

    sget v2, Lcom/baidu/mapapi/map/BaiduMap;->mapStatusReason:I

    or-int/lit8 v2, v2, 0x1

    sput v2, Lcom/baidu/mapapi/map/BaiduMap;->mapStatusReason:I

    invoke-direct/range {p0 .. p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->P()V

    const/4 v2, 0x1

    const/16 v3, 0x53

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v8}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(III)I

    :cond_233
    :goto_233
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    if-eq v2, v3, :cond_252

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iput v4, v2, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->c:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iput v5, v2, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->d:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iput v6, v2, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->a:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iput v7, v2, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->b:F

    :cond_252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget-boolean v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->e:Z

    if-nez v2, :cond_2c9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->N:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, v2, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->f:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->O:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, v2, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->g:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->e:Z

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget-wide v4, v4, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->h:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2c9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->b:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->a:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->b:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v4, v4, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->a:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->d:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v4, v4, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->c:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v4, v4, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->d:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v5, v5, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->c:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iput-wide v2, v4, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->h:D

    :cond_2c9
    const/4 v2, 0x1

    goto/16 :goto_19f

    :cond_2cc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->c:F

    sub-float/2addr v2, v4

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_233

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->d:F

    sub-float/2addr v2, v5

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_233

    sget v2, Lcom/baidu/mapapi/map/BaiduMap;->mapStatusReason:I

    or-int/lit8 v2, v2, 0x1

    sput v2, Lcom/baidu/mapapi/map/BaiduMap;->mapStatusReason:I

    invoke-direct/range {p0 .. p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->P()V

    const/4 v2, 0x1

    const/16 v3, 0x57

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v8}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(III)I

    goto/16 :goto_233

    :cond_2f8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_30d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_30d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_233

    :cond_30d
    sub-float v2, v5, v4

    float-to-double v2, v2

    sub-float v8, v7, v6

    float-to-double v8, v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v8, v8, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->d:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v9, v9, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->c:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v10, v10, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->b:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v11, v11, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->a:F

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    sub-double/2addr v2, v8

    sub-float v8, v7, v6

    sub-float v9, v7, v6

    mul-float/2addr v8, v9

    sub-float v9, v5, v4

    sub-float v10, v5, v4

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget-wide v10, v10, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->h:D

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    div-double/2addr v10, v12

    const-wide v12, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v10, v12

    double-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v11, v11, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->g:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v12, v12, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->c:F

    sub-float/2addr v11, v12

    float-to-double v11, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v13, v13, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->f:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v14, v14, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->a:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v13, v13, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->f:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v14, v14, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->a:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v14, v14, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->f:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v15, v15, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->a:F

    sub-float/2addr v14, v15

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v14, v14, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->g:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v15, v15, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->c:F

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget v15, v15, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->g:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->c:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    add-double v15, v11, v2

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    mul-double/2addr v15, v8

    float-to-double v0, v6

    move-wide/from16 v17, v0

    add-double v15, v15, v17

    double-to-float v15, v15

    add-double/2addr v11, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v13

    mul-double/2addr v11, v8

    float-to-double v13, v4

    add-double/2addr v11, v13

    double-to-float v11, v11

    const-wide v12, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v12

    const-wide v12, 0x400921ff2e48e8a7L    # 3.1416

    div-double/2addr v2, v12

    double-to-int v2, v2

    const-wide/16 v12, 0x0

    cmpl-double v3, v8, v12

    if-lez v3, :cond_463

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    if-eq v3, v12, :cond_405

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v12, 0x7d0

    if-le v3, v12, :cond_463

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    if-ne v3, v12, :cond_463

    :cond_405
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->E()Lcom/baidu/mapsdkplatform/comapi/map/ab;

    move-result-object v2

    iget v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a:F

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->e:Z

    if-eqz v3, :cond_438

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v8, v12

    if-lez v3, :cond_446

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->a:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_427

    const/4 v2, 0x0

    goto/16 :goto_19f

    :cond_427
    sget v2, Lcom/baidu/mapapi/map/BaiduMap;->mapStatusReason:I

    or-int/lit8 v2, v2, 0x1

    sput v2, Lcom/baidu/mapapi/map/BaiduMap;->mapStatusReason:I

    invoke-direct/range {p0 .. p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->P()V

    const/16 v2, 0x2001

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v10}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(III)I

    :cond_438
    :goto_438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iput v15, v2, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->f:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iput v11, v2, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->g:F

    goto/16 :goto_233

    :cond_446
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->b:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_451

    const/4 v2, 0x0

    goto/16 :goto_19f

    :cond_451
    sget v2, Lcom/baidu/mapapi/map/BaiduMap;->mapStatusReason:I

    or-int/lit8 v2, v2, 0x1

    sput v2, Lcom/baidu/mapapi/map/BaiduMap;->mapStatusReason:I

    invoke-direct/range {p0 .. p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->P()V

    const/16 v2, 0x2001

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v10}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(III)I

    goto :goto_438

    :cond_463
    if-eqz v2, :cond_438

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    if-eq v3, v8, :cond_47b

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v8, 0xa

    if-le v3, v8, :cond_438

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    if-ne v3, v8, :cond_438

    :cond_47b
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->x:Z

    if-eqz v3, :cond_438

    invoke-direct/range {p0 .. p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->P()V

    const/16 v3, 0x2001

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v2}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(III)I

    goto :goto_438

    :cond_492
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->P:I

    if-nez v2, :cond_233

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->W:I

    if-nez v2, :cond_233

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->U:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->V:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_4f7

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->U:J

    :goto_4ae
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->U:J

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->S:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->T:J

    cmp-long v2, v2, v8

    if-gez v2, :cond_4fc

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->T:J

    :goto_4c2
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->S:J

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->U:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->S:J

    sub-long/2addr v2, v8

    const-wide/16 v8, 0xc8

    cmp-long v2, v2, v8

    if-gez v2, :cond_233

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->e:Z

    if-eqz v2, :cond_233

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->E()Lcom/baidu/mapsdkplatform/comapi/map/ab;

    move-result-object v2

    if-eqz v2, :cond_233

    iget v3, v2, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v3, v8

    iput v3, v2, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a:F

    sget v3, Lcom/baidu/mapapi/map/BaiduMap;->mapStatusReason:I

    or-int/lit8 v3, v3, 0x1

    sput v3, Lcom/baidu/mapapi/map/BaiduMap;->mapStatusReason:I

    const/16 v3, 0x12c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(Lcom/baidu/mapsdkplatform/comapi/map/ab;I)V

    goto/16 :goto_233

    :cond_4f7
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->V:J

    goto :goto_4ae

    :cond_4fc
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->S:J

    goto :goto_4c2

    :cond_501
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_52e

    const/4 v2, 0x0

    goto/16 :goto_19f

    :pswitch_50b
    invoke-direct/range {p0 .. p1}, Lcom/baidu/mapsdkplatform/comapi/map/e;->b(Landroid/view/MotionEvent;)V

    goto/16 :goto_19f

    :pswitch_510
    invoke-direct/range {p0 .. p1}, Lcom/baidu/mapsdkplatform/comapi/map/e;->d(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_19f

    :pswitch_516
    invoke-direct/range {p0 .. p1}, Lcom/baidu/mapsdkplatform/comapi/map/e;->c(Landroid/view/MotionEvent;)Z

    goto/16 :goto_19f

    nop

    :sswitch_data_51c
    .sparse-switch
        0x5 -> :sswitch_1a0
        0x6 -> :sswitch_1c8
        0x105 -> :sswitch_1b4
        0x106 -> :sswitch_1dc
    .end sparse-switch

    :pswitch_data_52e
    .packed-switch 0x0
        :pswitch_50b
        :pswitch_510
        :pswitch_516
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(II)Lcom/baidu/mapapi/model/inner/GeoPoint;
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->K:Lcom/baidu/mapsdkplatform/comapi/map/af;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/map/af;->a(II)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method b(FF)V
    .registers 9

    const/4 v5, 0x1

    const/high16 v4, 0x42f00000    # 120.0f

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget-boolean v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->e:Z

    if-eqz v0, :cond_a

    :goto_9
    return-void

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ab:J

    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ab:J

    iget-wide v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->aa:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-gez v0, :cond_4f

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->X:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4a

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Y:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4a

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->aa:J

    iput-boolean v5, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ac:Z

    :goto_39
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->X:F

    iput p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Y:F

    float-to-int v0, p1

    float-to-int v1, p2

    const/4 v2, 0x4

    const/4 v3, 0x0

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0, v2, v3, v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(III)I

    iput-boolean v5, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Z:Z

    goto :goto_9

    :cond_4a
    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ab:J

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->aa:J

    goto :goto_39

    :cond_4f
    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ab:J

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->aa:J

    goto :goto_39
.end method

.method b(I)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->b(I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    :cond_c
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/e;->g(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->f(Landroid/os/Bundle;)V

    goto :goto_4
.end method

.method b(Landroid/os/Handler;)V
    .registers 4

    const/16 v0, 0xfa0

    invoke-static {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/MessageCenter;->unregistMessage(ILandroid/os/Handler;)V

    const/16 v0, 0x29

    invoke-static {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/MessageCenter;->unregistMessage(ILandroid/os/Handler;)V

    const/16 v0, 0x31

    invoke-static {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/MessageCenter;->unregistMessage(ILandroid/os/Handler;)V

    const/16 v0, 0x27

    invoke-static {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/MessageCenter;->unregistMessage(ILandroid/os/Handler;)V

    const v0, 0xff09

    invoke-static {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/MessageCenter;->unregistMessage(ILandroid/os/Handler;)V

    const/16 v0, 0x32

    invoke-static {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/MessageCenter;->unregistMessage(ILandroid/os/Handler;)V

    const/16 v0, 0x3e7

    invoke-static {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/MessageCenter;->unregistMessage(ILandroid/os/Handler;)V

    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->i:J

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/BaseMapCallback;->removeLayerDataInterface(J)V

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->y:Z

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->y:Z

    return v0
.end method

.method public c()V
    .registers 6

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/map/d;

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-wide v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/d;->a:J

    const/4 v0, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(JZ)V

    goto :goto_b
.end method

.method public c(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/e;->g(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->g(Landroid/os/Bundle;)V

    goto :goto_4
.end method

.method public c(Z)V
    .registers 7

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->G:Lcom/baidu/mapsdkplatform/comapi/map/ah;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/ah;->a:J

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->D:Lcom/baidu/mapsdkplatform/comapi/map/x;

    iget-wide v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(JJ)Z

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->D:Lcom/baidu/mapsdkplatform/comapi/map/x;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:J

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->G:Lcom/baidu/mapsdkplatform/comapi/map/ah;

    iget-wide v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/ah;->a:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(JJ)Z

    goto :goto_f
.end method

.method c(FF)Z
    .registers 12

    const/high16 v8, 0x40400000    # 3.0f

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget-boolean v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->e:Z

    if-eqz v0, :cond_e

    move v2, v3

    :cond_d
    :goto_d
    return v2

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Lcom/baidu/mapsdkplatform/comapi/map/e;->l:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x12c

    cmp-long v0, v0, v4

    if-gez v0, :cond_1d

    move v2, v3

    goto :goto_d

    :cond_1d
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->o:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/map/l;

    float-to-int v2, p1

    float-to-int v4, p2

    invoke-virtual {p0, v2, v4}, Lcom/baidu/mapsdkplatform/comapi/map/e;->b(II)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/map/l;->d(Lcom/baidu/mapapi/model/inner/GeoPoint;)V

    goto :goto_27

    :cond_3d
    move v2, v3

    goto :goto_d

    :cond_3f
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->X:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Y:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensity()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_71

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensity()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v6

    :goto_5e
    double-to-float v0, v0

    iget-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Z:Z

    if-eqz v1, :cond_77

    div-float v1, v4, v0

    cmpg-float v1, v1, v8

    if-gtz v1, :cond_77

    div-float v0, v5, v0

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_77

    move v2, v3

    goto :goto_d

    :cond_71
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensity()F

    move-result v0

    float-to-double v0, v0

    goto :goto_5e

    :cond_77
    iput-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Z:Z

    float-to-int v1, p1

    float-to-int v0, p2

    if-gez v1, :cond_7e

    move v1, v2

    :cond_7e
    if-gez v0, :cond_81

    move v0, v2

    :cond_81
    iget-boolean v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->d:Z

    if-eqz v4, :cond_d

    iget v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ag:F

    iput v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ae:F

    iget v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ah:F

    iput v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->af:F

    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ag:F

    iput p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ah:F

    iget-wide v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->aj:J

    iput-wide v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ai:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->aj:J

    iput-boolean v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ad:Z

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->P()V

    const/4 v3, 0x3

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0, v3, v2, v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(III)I

    goto/16 :goto_d
.end method

.method c(II)Z
    .registers 5

    const/4 v0, 0x0

    if-lt p1, v0, :cond_f

    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->N:I

    add-int/2addr v1, v0

    if-gt p1, v1, :cond_f

    if-lt p2, v0, :cond_f

    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->O:I

    add-int/2addr v1, v0

    if-le p2, v1, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public d()V
    .registers 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/map/d;

    instance-of v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/x;

    if-nez v2, :cond_24

    instance-of v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/a;

    if-nez v2, :cond_24

    instance-of v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/n;

    if-eqz v2, :cond_2c

    :cond_24
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-wide v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/d;->a:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(JZ)V

    goto :goto_c

    :cond_2c
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-wide v3, v0, Lcom/baidu/mapsdkplatform/comapi/map/d;->a:J

    const/4 v0, 0x1

    invoke-virtual {v2, v3, v4, v0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(JZ)V

    goto :goto_c

    :cond_35
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0, v5}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->c(Z)V

    goto :goto_5
.end method

.method public d(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/e;->g(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->h(Landroid/os/Bundle;)V

    goto :goto_4
.end method

.method public d(Z)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->E:Lcom/baidu/mapsdkplatform/comapi/map/g;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/g;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(JZ)V

    goto :goto_4
.end method

.method d(FF)Z
    .registers 11

    const/high16 v7, 0x41200000    # 10.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->o:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/map/l;

    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Lcom/baidu/mapsdkplatform/comapi/map/e;->b(II)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/baidu/mapsdkplatform/comapi/map/l;->e(Lcom/baidu/mapapi/model/inner/GeoPoint;)V

    goto :goto_e

    :cond_24
    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->o:Z

    move v0, v2

    :goto_27
    return v0

    :cond_28
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q:Lcom/baidu/mapsdkplatform/comapi/map/j$a;

    iget-boolean v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/j$a;->e:Z

    if-nez v0, :cond_6a

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ac:Z

    if-eqz v0, :cond_37

    invoke-direct {p0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/map/e;->e(FF)Z

    move-result v0

    goto :goto_27

    :cond_37
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ad:Z

    if-eqz v0, :cond_40

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->Q()Z

    move-result v0

    goto :goto_27

    :cond_40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ab:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x190

    cmp-long v0, v3, v5

    if-gez v0, :cond_6a

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->X:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v7

    if-gez v0, :cond_6a

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->Y:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v7

    if-gez v0, :cond_6a

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->L()V

    move v0, v2

    goto :goto_27

    :cond_6a
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->L()V

    float-to-int v3, p1

    float-to-int v0, p2

    if-gez v3, :cond_72

    move v3, v1

    :cond_72
    if-gez v0, :cond_75

    move v0, v1

    :cond_75
    const/4 v4, 0x5

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    invoke-virtual {p0, v4, v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(III)I

    move v0, v2

    goto :goto_27
.end method

.method public e(Z)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->z:Lcom/baidu/mapsdkplatform/comapi/map/aj;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/aj;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(JZ)V

    goto :goto_4
.end method

.method public e()Z
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->z:Lcom/baidu/mapsdkplatform/comapi/map/aj;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->z:Lcom/baidu/mapsdkplatform/comapi/map/aj;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/aj;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->c(J)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method f()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/af;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-direct {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/af;-><init>(Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->K:Lcom/baidu/mapsdkplatform/comapi/map/af;

    goto :goto_4
.end method

.method public f(Z)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ak:Lcom/baidu/mapsdkplatform/comapi/map/f;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/f;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(JZ)V

    goto :goto_4
.end method

.method public g(Z)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->v:Z

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->v:Z

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->b(Z)V

    goto :goto_4
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->q:Z

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->E:Lcom/baidu/mapsdkplatform/comapi/map/g;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/g;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->e(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public h(Z)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->q:Z

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->q:Z

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->c(Z)V

    goto :goto_4
.end method

.method public i(Z)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->d(Z)V

    goto :goto_4
.end method

.method public i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->v:Z

    return v0
.end method

.method public j(Z)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->s:Z

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->E:Lcom/baidu/mapsdkplatform/comapi/map/g;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/g;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(JZ)V

    goto :goto_4
.end method

.method public j()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->k()Z

    move-result v0

    goto :goto_5
.end method

.method public k(Z)V
    .registers 5

    const/high16 v1, 0x41b00000    # 22.0f

    const/high16 v0, 0x41a80000    # 21.0f

    if-eqz p1, :cond_22

    iput v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->a:F

    iput v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->c:F

    :goto_a
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->e(Z)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->an:Lcom/baidu/mapsdkplatform/comapi/map/b;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/b;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->d(J)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ao:Lcom/baidu/mapsdkplatform/comapi/map/c;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/c;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->d(J)V

    return-void

    :cond_22
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->a:F

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->c:F

    goto :goto_a
.end method

.method public k()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->r:Z

    return v0
.end method

.method public l()Z
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ak:Lcom/baidu/mapsdkplatform/comapi/map/f;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/f;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(J)Z

    move-result v0

    return v0
.end method

.method public m(Z)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->t:Z

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->D:Lcom/baidu/mapsdkplatform/comapi/map/x;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(JZ)V

    goto :goto_4
.end method

.method public m()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->o()Z

    move-result v0

    goto :goto_5
.end method

.method public n()V
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->G:Lcom/baidu/mapsdkplatform/comapi/map/ah;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/ah;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->d(J)V

    goto :goto_4
.end method

.method public n(Z)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->u:Z

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->H:Lcom/baidu/mapsdkplatform/comapi/map/n;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/n;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(JZ)V

    goto :goto_4
.end method

.method public o()V
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->p()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->H:Lcom/baidu/mapsdkplatform/comapi/map/n;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/n;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->b(J)V

    goto :goto_4
.end method

.method public o(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->d:Z

    return-void
.end method

.method public p()Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->q()Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;

    move-result-object v0

    return-object v0
.end method

.method public p(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->e:Z

    return-void
.end method

.method public q(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->f:Z

    return-void
.end method

.method public q()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->r()Z

    move-result v0

    return v0
.end method

.method public r(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->x:Z

    return-void
.end method

.method public r()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->s:Z

    return v0
.end method

.method public s(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->w:Z

    return-void
.end method

.method public s()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->t:Z

    return v0
.end method

.method public t()V
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->H:Lcom/baidu/mapsdkplatform/comapi/map/n;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/n;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->b(J)V

    goto :goto_4
.end method

.method public t(Z)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->F:Lcom/baidu/mapsdkplatform/comapi/map/ae;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/ae;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(JZ)V

    :cond_d
    return-void
.end method

.method u()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->e()V

    goto :goto_4
.end method

.method public u(Z)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->ao:Lcom/baidu/mapsdkplatform/comapi/map/c;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/c;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(JZ)V

    :cond_d
    return-void
.end method

.method v()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->f()V

    goto :goto_4
.end method

.method public v(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->aq:Z

    return-void
.end method

.method public w()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->d:Z

    return v0
.end method

.method public x()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->e:Z

    return v0
.end method

.method public y()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->x:Z

    return v0
.end method

.method public z()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/e;->w:Z

    return v0
.end method
