.class public Lcom/baidu/location/a/l;
.super Lcom/baidu/location/a/i;


# static fields
.field public static h:Z

.field private static i:Lcom/baidu/location/a/l;


# instance fields
.field private A:D

.field private B:Z

.field private C:J

.field private D:J

.field private E:Lcom/baidu/location/a/l$a;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Lcom/baidu/location/a/l$b;

.field private L:Z

.field private M:I

.field private N:J

.field private O:Z

.field final e:I

.field public f:Lcom/baidu/location/a/i$b;

.field public final g:Landroid/os/Handler;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Lcom/baidu/location/BDLocation;

.field private m:Lcom/baidu/location/BDLocation;

.field private n:Lcom/baidu/location/b/g;

.field private o:Lcom/baidu/location/b/a;

.field private p:Lcom/baidu/location/b/g;

.field private q:Lcom/baidu/location/b/a;

.field private r:Z

.field private volatile s:Z

.field private t:Z

.field private u:J

.field private v:J

.field private w:Lcom/baidu/location/Address;

.field private x:Ljava/lang/String;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/location/Poi;",
            ">;"
        }
    .end annotation
.end field

.field private z:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/a/l;->i:Lcom/baidu/location/a/l;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/location/a/l;->h:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 7

    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/baidu/location/a/i;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/baidu/location/a/l;->e:I

    iput-boolean v5, p0, Lcom/baidu/location/a/l;->j:Z

    iput-object v1, p0, Lcom/baidu/location/a/l;->f:Lcom/baidu/location/a/i$b;

    iput-object v1, p0, Lcom/baidu/location/a/l;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    iput-object v1, p0, Lcom/baidu/location/a/l;->m:Lcom/baidu/location/BDLocation;

    iput-object v1, p0, Lcom/baidu/location/a/l;->n:Lcom/baidu/location/b/g;

    iput-object v1, p0, Lcom/baidu/location/a/l;->o:Lcom/baidu/location/b/a;

    iput-object v1, p0, Lcom/baidu/location/a/l;->p:Lcom/baidu/location/b/g;

    iput-object v1, p0, Lcom/baidu/location/a/l;->q:Lcom/baidu/location/b/a;

    iput-boolean v5, p0, Lcom/baidu/location/a/l;->r:Z

    iput-boolean v2, p0, Lcom/baidu/location/a/l;->s:Z

    iput-boolean v2, p0, Lcom/baidu/location/a/l;->t:Z

    iput-wide v3, p0, Lcom/baidu/location/a/l;->u:J

    iput-wide v3, p0, Lcom/baidu/location/a/l;->v:J

    iput-object v1, p0, Lcom/baidu/location/a/l;->w:Lcom/baidu/location/Address;

    iput-object v1, p0, Lcom/baidu/location/a/l;->x:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/a/l;->y:Ljava/util/List;

    iput-boolean v2, p0, Lcom/baidu/location/a/l;->B:Z

    iput-wide v3, p0, Lcom/baidu/location/a/l;->C:J

    iput-wide v3, p0, Lcom/baidu/location/a/l;->D:J

    iput-object v1, p0, Lcom/baidu/location/a/l;->E:Lcom/baidu/location/a/l$a;

    iput-boolean v2, p0, Lcom/baidu/location/a/l;->F:Z

    iput-boolean v2, p0, Lcom/baidu/location/a/l;->G:Z

    iput-boolean v5, p0, Lcom/baidu/location/a/l;->H:Z

    new-instance v0, Lcom/baidu/location/a/i$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/a/i$a;-><init>(Lcom/baidu/location/a/i;)V

    iput-object v0, p0, Lcom/baidu/location/a/l;->g:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/baidu/location/a/l;->I:Z

    iput-boolean v2, p0, Lcom/baidu/location/a/l;->J:Z

    iput-object v1, p0, Lcom/baidu/location/a/l;->K:Lcom/baidu/location/a/l$b;

    iput-boolean v2, p0, Lcom/baidu/location/a/l;->L:Z

    iput v2, p0, Lcom/baidu/location/a/l;->M:I

    iput-wide v3, p0, Lcom/baidu/location/a/l;->N:J

    iput-boolean v5, p0, Lcom/baidu/location/a/l;->O:Z

    new-instance v0, Lcom/baidu/location/a/i$b;

    invoke-direct {v0, p0}, Lcom/baidu/location/a/i$b;-><init>(Lcom/baidu/location/a/i;)V

    iput-object v0, p0, Lcom/baidu/location/a/l;->f:Lcom/baidu/location/a/i$b;

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/a/l;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/location/a/l;->h(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/a/l;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/a/l;->L:Z

    return v0
.end method

.method static synthetic a(Lcom/baidu/location/a/l;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/location/a/l;->L:Z

    return p1
.end method

.method private a(Lcom/baidu/location/b/a;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/b/b;->f()Lcom/baidu/location/b/a;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/a/l;->b:Lcom/baidu/location/b/a;

    iget-object v2, p0, Lcom/baidu/location/a/l;->b:Lcom/baidu/location/b/a;

    if-ne v2, p1, :cond_12

    move v0, v1

    :cond_11
    :goto_11
    return v0

    :cond_12
    iget-object v2, p0, Lcom/baidu/location/a/l;->b:Lcom/baidu/location/b/a;

    if-eqz v2, :cond_11

    if-eqz p1, :cond_11

    iget-object v2, p0, Lcom/baidu/location/a/l;->b:Lcom/baidu/location/b/a;

    invoke-virtual {p1, v2}, Lcom/baidu/location/b/a;->a(Lcom/baidu/location/b/a;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    goto :goto_11
.end method

.method private a(Lcom/baidu/location/b/g;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/location/b/h;->a()Lcom/baidu/location/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/b/h;->o()Lcom/baidu/location/b/g;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/a/l;->a:Lcom/baidu/location/b/g;

    iget-object v2, p0, Lcom/baidu/location/a/l;->a:Lcom/baidu/location/b/g;

    if-ne p1, v2, :cond_12

    move v0, v1

    :cond_11
    :goto_11
    return v0

    :cond_12
    iget-object v2, p0, Lcom/baidu/location/a/l;->a:Lcom/baidu/location/b/g;

    if-eqz v2, :cond_11

    if-eqz p1, :cond_11

    iget-object v2, p0, Lcom/baidu/location/a/l;->a:Lcom/baidu/location/b/g;

    invoke-virtual {p1, v2}, Lcom/baidu/location/b/g;->c(Lcom/baidu/location/b/g;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    goto :goto_11
.end method

.method static synthetic b(Lcom/baidu/location/a/l;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/a/l;->t:Z

    return v0
.end method

.method static synthetic b(Lcom/baidu/location/a/l;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/location/a/l;->t:Z

    return p1
.end method

.method public static declared-synchronized c()Lcom/baidu/location/a/l;
    .registers 2

    const-class v1, Lcom/baidu/location/a/l;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/location/a/l;->i:Lcom/baidu/location/a/l;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/location/a/l;

    invoke-direct {v0}, Lcom/baidu/location/a/l;-><init>()V

    sput-object v0, Lcom/baidu/location/a/l;->i:Lcom/baidu/location/a/l;

    :cond_e
    sget-object v0, Lcom/baidu/location/a/l;->i:Lcom/baidu/location/a/l;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c(Landroid/os/Message;)V
    .registers 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isWaitingLocTag"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    sput-boolean v3, Lcom/baidu/location/a/l;->h:Z

    :cond_10
    if-eqz v0, :cond_12

    :cond_12
    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/a/a;->d(Landroid/os/Message;)I

    move-result v0

    packed-switch v0, :pswitch_data_48

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "this type %d is illegal"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_31
    invoke-static {}, Lcom/baidu/location/b/e;->a()Lcom/baidu/location/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/e;->i()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-direct {p0, p1}, Lcom/baidu/location/a/l;->e(Landroid/os/Message;)V

    :cond_3e
    :goto_3e
    return-void

    :pswitch_3f
    invoke-direct {p0, p1}, Lcom/baidu/location/a/l;->d(Landroid/os/Message;)V

    goto :goto_3e

    :pswitch_43
    invoke-direct {p0, p1}, Lcom/baidu/location/a/l;->g(Landroid/os/Message;)V

    goto :goto_3e

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_43
        :pswitch_31
    .end packed-switch
.end method

.method static synthetic c(Lcom/baidu/location/a/l;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/a/l;->F:Z

    return v0
.end method

.method static synthetic c(Lcom/baidu/location/a/l;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/location/a/l;->F:Z

    return p1
.end method

.method private d(Landroid/os/Message;)V
    .registers 3

    invoke-static {}, Lcom/baidu/location/b/e;->a()Lcom/baidu/location/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/e;->i()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0, p1}, Lcom/baidu/location/a/l;->e(Landroid/os/Message;)V

    invoke-static {}, Lcom/baidu/location/a/n;->a()Lcom/baidu/location/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/n;->c()V

    :goto_14
    return-void

    :cond_15
    invoke-direct {p0, p1}, Lcom/baidu/location/a/l;->g(Landroid/os/Message;)V

    invoke-static {}, Lcom/baidu/location/a/n;->a()Lcom/baidu/location/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/n;->b()V

    goto :goto_14
.end method

.method static synthetic d(Lcom/baidu/location/a/l;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/a/l;->G:Z

    return v0
.end method

.method private e(Landroid/os/Message;)V
    .registers 13

    const/4 v10, 0x0

    invoke-static {}, Lcom/baidu/location/b/e;->a()Lcom/baidu/location/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/e;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lcom/baidu/location/BDLocation;

    invoke-direct {v9, v0}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/location/d/j;->g:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-boolean v0, Lcom/baidu/location/d/j;->h:Z

    if-nez v0, :cond_20

    sget-boolean v0, Lcom/baidu/location/d/j;->i:Z

    if-eqz v0, :cond_56

    :cond_20
    const/4 v0, 0x2

    new-array v8, v0, [F

    iget-wide v0, p0, Lcom/baidu/location/a/l;->A:D

    iget-wide v2, p0, Lcom/baidu/location/a/l;->z:D

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_62

    iget-object v0, p0, Lcom/baidu/location/a/l;->w:Lcom/baidu/location/Address;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/baidu/location/a/l;->w:Lcom/baidu/location/Address;

    invoke-virtual {v9, v0}, Lcom/baidu/location/BDLocation;->setAddr(Lcom/baidu/location/Address;)V

    :cond_44
    iget-object v0, p0, Lcom/baidu/location/a/l;->x:Ljava/lang/String;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/baidu/location/a/l;->x:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/baidu/location/BDLocation;->setLocationDescribe(Ljava/lang/String;)V

    :cond_4d
    iget-object v0, p0, Lcom/baidu/location/a/l;->y:Ljava/util/List;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/baidu/location/a/l;->y:Ljava/util/List;

    invoke-virtual {v9, v0}, Lcom/baidu/location/BDLocation;->setPoiList(Ljava/util/List;)V

    :cond_56
    :goto_56
    iput-object v9, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    iput-object v10, p0, Lcom/baidu/location/a/l;->m:Lcom/baidu/location/BDLocation;

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    return-void

    :cond_62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/l;->B:Z

    invoke-direct {p0, v10}, Lcom/baidu/location/a/l;->g(Landroid/os/Message;)V

    goto :goto_56
.end method

.method private f(Landroid/os/Message;)V
    .registers 7

    const/4 v4, 0x1

    invoke-static {}, Lcom/baidu/location/b/h;->a()Lcom/baidu/location/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/h;->f()Z

    move-result v0

    if-eqz v0, :cond_34

    iput-boolean v4, p0, Lcom/baidu/location/a/l;->t:Z

    iget-object v0, p0, Lcom/baidu/location/a/l;->K:Lcom/baidu/location/a/l$b;

    if-nez v0, :cond_19

    new-instance v0, Lcom/baidu/location/a/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/a/l$b;-><init>(Lcom/baidu/location/a/l;Lcom/baidu/location/a/l$1;)V

    iput-object v0, p0, Lcom/baidu/location/a/l;->K:Lcom/baidu/location/a/l$b;

    :cond_19
    iget-boolean v0, p0, Lcom/baidu/location/a/l;->L:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/baidu/location/a/l;->K:Lcom/baidu/location/a/l$b;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/baidu/location/a/l;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/location/a/l;->K:Lcom/baidu/location/a/l$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_28
    iget-object v0, p0, Lcom/baidu/location/a/l;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/location/a/l;->K:Lcom/baidu/location/a/l$b;

    const-wide/16 v2, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v4, p0, Lcom/baidu/location/a/l;->L:Z

    :goto_33
    return-void

    :cond_34
    invoke-direct {p0, p1}, Lcom/baidu/location/a/l;->h(Landroid/os/Message;)V

    goto :goto_33
.end method

.method private g(Landroid/os/Message;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/a/l;->M:I

    iget-boolean v0, p0, Lcom/baidu/location/a/l;->r:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/location/a/l;->M:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/a/l;->D:J

    invoke-static {}, Lcom/baidu/location/b/h;->a()Lcom/baidu/location/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/h;->j()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0, p1}, Lcom/baidu/location/a/l;->f(Landroid/os/Message;)V

    :goto_1d
    return-void

    :cond_1e
    invoke-direct {p0, p1}, Lcom/baidu/location/a/l;->h(Landroid/os/Message;)V

    goto :goto_1d

    :cond_22
    invoke-direct {p0, p1}, Lcom/baidu/location/a/l;->f(Landroid/os/Message;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/a/l;->D:J

    goto :goto_1d
.end method

.method private h(Landroid/os/Message;)V
    .registers 12

    const/16 v6, 0x3e

    const/4 v9, 0x0

    const-wide/16 v0, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/a/l;->u:J

    sub-long/2addr v2, v4

    iget-boolean v4, p0, Lcom/baidu/location/a/l;->s:Z

    if-eqz v4, :cond_19

    const-wide/16 v4, 0x2ee0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_19

    :cond_18
    :goto_18
    return-void

    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/a/l;->u:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-lez v2, :cond_42

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/a/l;->u:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_42

    iget-object v0, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_3e

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    :cond_3e
    invoke-direct {p0}, Lcom/baidu/location/a/l;->k()V

    goto :goto_18

    :cond_42
    iput-boolean v8, p0, Lcom/baidu/location/a/l;->s:Z

    iget-object v2, p0, Lcom/baidu/location/a/l;->o:Lcom/baidu/location/b/a;

    invoke-direct {p0, v2}, Lcom/baidu/location/a/l;->a(Lcom/baidu/location/b/a;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/baidu/location/a/l;->j:Z

    iget-object v2, p0, Lcom/baidu/location/a/l;->n:Lcom/baidu/location/b/g;

    invoke-direct {p0, v2}, Lcom/baidu/location/a/l;->a(Lcom/baidu/location/b/g;)Z

    move-result v2

    if-nez v2, :cond_d1

    iget-boolean v2, p0, Lcom/baidu/location/a/l;->j:Z

    if-nez v2, :cond_d1

    iget-object v2, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    if-eqz v2, :cond_d1

    iget-boolean v2, p0, Lcom/baidu/location/a/l;->B:Z

    if-nez v2, :cond_d1

    iget-object v2, p0, Lcom/baidu/location/a/l;->m:Lcom/baidu/location/BDLocation;

    if-eqz v2, :cond_77

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/a/l;->v:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_77

    iget-object v2, p0, Lcom/baidu/location/a/l;->m:Lcom/baidu/location/BDLocation;

    iput-object v2, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    iput-object v9, p0, Lcom/baidu/location/a/l;->m:Lcom/baidu/location/BDLocation;

    :cond_77
    invoke-static {}, Lcom/baidu/location/a/n;->a()Lcom/baidu/location/a/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/a/n;->d()Z

    move-result v2

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    invoke-static {}, Lcom/baidu/location/a/n;->a()Lcom/baidu/location/a/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/a/n;->e()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/location/BDLocation;->setDirection(F)V

    :cond_8e
    iget-object v2, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v2}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    if-ne v2, v6, :cond_a1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/a/l;->N:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gtz v4, :cond_1d2

    :cond_a1
    :goto_a1
    iget-object v2, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v2}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_c3

    iget-object v2, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v2}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    const/16 v3, 0xa1

    if-eq v2, v3, :cond_c3

    iget-object v2, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v2}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    if-ne v2, v6, :cond_d1

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-gez v0, :cond_d1

    :cond_c3
    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lcom/baidu/location/a/l;->k()V

    goto/16 :goto_18

    :cond_d1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/a/l;->u:J

    invoke-virtual {p0, v9}, Lcom/baidu/location/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-boolean v7, p0, Lcom/baidu/location/a/l;->J:Z

    if-nez v0, :cond_15f

    iput-boolean v8, p0, Lcom/baidu/location/a/l;->J:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/a/l;->N:J

    invoke-direct {p0}, Lcom/baidu/location/a/l;->j()[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/baidu/location/a/l;->C:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0xea60

    cmp-long v3, v3, v5

    if-lez v3, :cond_fc

    iput-wide v1, p0, Lcom/baidu/location/a/l;->C:J

    :cond_fc
    invoke-static {}, Lcom/baidu/location/b/h;->a()Lcom/baidu/location/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/h;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/location/a/l;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v0, v7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_121
    iget-object v1, p0, Lcom/baidu/location/a/l;->b:Lcom/baidu/location/b/a;

    if-eqz v1, :cond_144

    iget-object v1, p0, Lcom/baidu/location/a/l;->b:Lcom/baidu/location/b/a;

    invoke-virtual {v1}, Lcom/baidu/location/b/a;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_144

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/a/l;->b:Lcom/baidu/location/b/a;

    invoke-virtual {v2}, Lcom/baidu/location/b/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_144
    invoke-static {}, Lcom/baidu/location/d/b;->a()Lcom/baidu/location/d/b;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/baidu/location/d/b;->a(Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_15f
    iget-object v1, p0, Lcom/baidu/location/a/l;->k:Ljava/lang/String;

    if-eqz v1, :cond_178

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/l;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v9, p0, Lcom/baidu/location/a/l;->k:Ljava/lang/String;

    :cond_178
    iget-object v1, p0, Lcom/baidu/location/a/l;->f:Lcom/baidu/location/a/i$b;

    invoke-virtual {v1, v0}, Lcom/baidu/location/a/i$b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/a/l;->b:Lcom/baidu/location/b/a;

    iput-object v0, p0, Lcom/baidu/location/a/l;->o:Lcom/baidu/location/b/a;

    iget-object v0, p0, Lcom/baidu/location/a/l;->a:Lcom/baidu/location/b/g;

    iput-object v0, p0, Lcom/baidu/location/a/l;->n:Lcom/baidu/location/b/g;

    iget-boolean v0, p0, Lcom/baidu/location/a/l;->r:Z

    if-ne v0, v8, :cond_19f

    iput-boolean v7, p0, Lcom/baidu/location/a/l;->r:Z

    invoke-static {}, Lcom/baidu/location/b/h;->i()Z

    move-result v0

    if-eqz v0, :cond_19f

    if-eqz p1, :cond_19f

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/a/a;->e(Landroid/os/Message;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_19f

    :cond_19f
    iget v0, p0, Lcom/baidu/location/a/l;->M:I

    if-lez v0, :cond_18

    iget v0, p0, Lcom/baidu/location/a/l;->M:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1af

    invoke-static {}, Lcom/baidu/location/b/h;->a()Lcom/baidu/location/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/h;->f()Z

    :cond_1af
    iput v7, p0, Lcom/baidu/location/a/l;->M:I

    goto/16 :goto_18

    :cond_1b3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/location/a/l;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v0, v7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_121

    :cond_1d2
    move-wide v0, v2

    goto/16 :goto_a1
.end method

.method private j()[Ljava/lang/String;
    .registers 12

    const/4 v2, 0x0

    const/16 v10, 0x3e

    const/4 v1, 0x1

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, ""

    aput-object v0, v3, v2

    const-string v0, "Location failed beacuse we can not get any loc information!"

    aput-object v0, v3, v1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "&apl="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/d/j;->a(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v1, :cond_27

    const-string v0, "Location failed beacuse we can not get any loc information in airplane mode, you can turn it off and try again!!"

    aput-object v0, v3, v1

    :cond_27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/d/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "0|0|"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "Location failed beacuse we can not get any loc information without any location permission!"

    aput-object v0, v3, v1

    :cond_3e
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v0, v7, :cond_f8

    const-string v0, "&loc="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/d/j;->b(Landroid/content/Context;)I

    move-result v7

    if-nez v7, :cond_f5

    const-string v0, "Location failed beacuse we can not get any loc information with the phone loc mode is off, you can turn it on and try again!"

    aput-object v0, v3, v1

    move v0, v1

    :goto_5b
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_5e
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v7, v8, :cond_76

    const-string v7, "&lmd="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/location/d/j;->b(Landroid/content/Context;)I

    move-result v7

    if-ltz v7, :cond_76

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_76
    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/location/b/b;->g()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/baidu/location/b/h;->a()Lcom/baidu/location/b/h;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/location/b/h;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/baidu/location/d/j;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ne v5, v1, :cond_aa

    invoke-static {}, Lcom/baidu/location/a/b;->a()Lcom/baidu/location/a/b;

    move-result-object v0

    const/4 v1, 0x7

    const-string v5, "Location failed beacuse we can not get any loc information in airplane mode, you can turn it off and try again!!"

    invoke-virtual {v0, v10, v1, v5}, Lcom/baidu/location/a/b;->a(IILjava/lang/String;)V

    :goto_a3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    return-object v3

    :cond_aa
    const-string v1, "0|0|"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_bd

    invoke-static {}, Lcom/baidu/location/a/b;->a()Lcom/baidu/location/a/b;

    move-result-object v0

    const/4 v1, 0x4

    const-string v5, "Location failed beacuse we can not get any loc information without any location permission!"

    invoke-virtual {v0, v10, v1, v5}, Lcom/baidu/location/a/b;->a(IILjava/lang/String;)V

    goto :goto_a3

    :cond_bd
    if-eqz v0, :cond_ca

    invoke-static {}, Lcom/baidu/location/a/b;->a()Lcom/baidu/location/a/b;

    move-result-object v0

    const/4 v1, 0x5

    const-string v5, "Location failed beacuse we can not get any loc information with the phone loc mode is off, you can turn it on and try again!"

    invoke-virtual {v0, v10, v1, v5}, Lcom/baidu/location/a/b;->a(IILjava/lang/String;)V

    goto :goto_a3

    :cond_ca
    if-eqz v7, :cond_e9

    if-eqz v8, :cond_e9

    const-string v0, "&sim=1"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    const-string v0, "&wifio=1"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e9

    invoke-static {}, Lcom/baidu/location/a/b;->a()Lcom/baidu/location/a/b;

    move-result-object v0

    const/4 v1, 0x6

    const-string v5, "Location failed beacuse we can not get any loc information , you can insert a sim card or open wifi and try again!"

    invoke-virtual {v0, v10, v1, v5}, Lcom/baidu/location/a/b;->a(IILjava/lang/String;)V

    goto :goto_a3

    :cond_e9
    invoke-static {}, Lcom/baidu/location/a/b;->a()Lcom/baidu/location/a/b;

    move-result-object v0

    const/16 v1, 0x9

    const-string v5, "Location failed beacuse we can not get any loc information!"

    invoke-virtual {v0, v10, v1, v5}, Lcom/baidu/location/a/b;->a(IILjava/lang/String;)V

    goto :goto_a3

    :cond_f5
    move v0, v2

    goto/16 :goto_5b

    :cond_f8
    move v0, v2

    goto/16 :goto_5e
.end method

.method private k()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/a/l;->s:Z

    iput-boolean v1, p0, Lcom/baidu/location/a/l;->G:Z

    iput-boolean v1, p0, Lcom/baidu/location/a/l;->H:Z

    iput-boolean v1, p0, Lcom/baidu/location/a/l;->B:Z

    invoke-direct {p0}, Lcom/baidu/location/a/l;->l()V

    iget-boolean v0, p0, Lcom/baidu/location/a/l;->O:Z

    if-eqz v0, :cond_12

    iput-boolean v1, p0, Lcom/baidu/location/a/l;->O:Z

    :cond_12
    return-void
.end method

.method private l()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/baidu/location/a/v;->a()Lcom/baidu/location/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/v;->c()V

    :cond_b
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/location/BDLocation;)Lcom/baidu/location/Address;
    .registers 12

    const/4 v9, 0x0

    sget-object v0, Lcom/baidu/location/d/j;->g:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-boolean v0, Lcom/baidu/location/d/j;->h:Z

    if-nez v0, :cond_13

    sget-boolean v0, Lcom/baidu/location/d/j;->i:Z

    if-eqz v0, :cond_3f

    :cond_13
    const/4 v0, 0x2

    new-array v8, v0, [F

    iget-wide v0, p0, Lcom/baidu/location/a/l;->A:D

    iget-wide v2, p0, Lcom/baidu/location/a/l;->z:D

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_35

    iget-object v0, p0, Lcom/baidu/location/a/l;->w:Lcom/baidu/location/Address;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/baidu/location/a/l;->w:Lcom/baidu/location/Address;

    :goto_34
    return-object v0

    :cond_35
    iput-object v9, p0, Lcom/baidu/location/a/l;->x:Ljava/lang/String;

    iput-object v9, p0, Lcom/baidu/location/a/l;->y:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/l;->B:Z

    invoke-direct {p0, v9}, Lcom/baidu/location/a/l;->g(Landroid/os/Message;)V

    :cond_3f
    move-object v0, v9

    goto :goto_34
.end method

.method public a()V
    .registers 12

    const/4 v2, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/baidu/location/a/l;->E:Lcom/baidu/location/a/l$a;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/baidu/location/a/l;->F:Z

    if-eqz v0, :cond_13

    iput-boolean v10, p0, Lcom/baidu/location/a/l;->F:Z

    iget-object v0, p0, Lcom/baidu/location/a/l;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/location/a/l;->E:Lcom/baidu/location/a/l$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_13
    invoke-static {}, Lcom/baidu/location/b/e;->a()Lcom/baidu/location/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/e;->i()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-static {}, Lcom/baidu/location/b/e;->a()Lcom/baidu/location/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/e;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lcom/baidu/location/BDLocation;

    invoke-direct {v9, v0}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/location/d/j;->g:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    sget-boolean v0, Lcom/baidu/location/d/j;->h:Z

    if-nez v0, :cond_3c

    sget-boolean v0, Lcom/baidu/location/d/j;->i:Z

    if-eqz v0, :cond_71

    :cond_3c
    const/4 v0, 0x2

    new-array v8, v0, [F

    iget-wide v0, p0, Lcom/baidu/location/a/l;->A:D

    iget-wide v2, p0, Lcom/baidu/location/a/l;->z:D

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v8, v10

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_71

    iget-object v0, p0, Lcom/baidu/location/a/l;->w:Lcom/baidu/location/Address;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/baidu/location/a/l;->w:Lcom/baidu/location/Address;

    invoke-virtual {v9, v0}, Lcom/baidu/location/BDLocation;->setAddr(Lcom/baidu/location/Address;)V

    :cond_5f
    iget-object v0, p0, Lcom/baidu/location/a/l;->x:Ljava/lang/String;

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/baidu/location/a/l;->x:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/baidu/location/BDLocation;->setLocationDescribe(Ljava/lang/String;)V

    :cond_68
    iget-object v0, p0, Lcom/baidu/location/a/l;->y:Ljava/util/List;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/baidu/location/a/l;->y:Ljava/util/List;

    invoke-virtual {v9, v0}, Lcom/baidu/location/BDLocation;->setPoiList(Ljava/util/List;)V

    :cond_71
    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lcom/baidu/location/a/l;->k()V

    :goto_7b
    return-void

    :cond_7c
    iget-boolean v0, p0, Lcom/baidu/location/a/l;->G:Z

    if-eqz v0, :cond_84

    invoke-direct {p0}, Lcom/baidu/location/a/l;->k()V

    goto :goto_7b

    :cond_84
    iget-boolean v0, p0, Lcom/baidu/location/a/l;->j:Z

    if-nez v0, :cond_9b

    iget-object v0, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_9b

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    :goto_95
    iput-object v2, p0, Lcom/baidu/location/a/l;->m:Lcom/baidu/location/BDLocation;

    invoke-direct {p0}, Lcom/baidu/location/a/l;->k()V

    goto :goto_7b

    :cond_9b
    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0}, Lcom/baidu/location/BDLocation;-><init>()V

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    iput-object v2, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    goto :goto_95
.end method

.method public a(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/location/a/l;->E:Lcom/baidu/location/a/l$a;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/baidu/location/a/l;->F:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/l;->F:Z

    iget-object v0, p0, Lcom/baidu/location/a/l;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/location/a/l;->E:Lcom/baidu/location/a/l$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v2, 0xa7

    if-ne v1, v2, :cond_29

    iget-boolean v1, p0, Lcom/baidu/location/a/l;->J:Z

    if-eqz v1, :cond_29

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    :cond_29
    invoke-virtual {p0, v0}, Lcom/baidu/location/a/l;->b(Lcom/baidu/location/BDLocation;)V

    return-void
.end method

.method public b(Landroid/os/Message;)V
    .registers 3

    iget-boolean v0, p0, Lcom/baidu/location/a/l;->I:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/baidu/location/a/l;->c(Landroid/os/Message;)V

    goto :goto_4
.end method

.method public b(Lcom/baidu/location/BDLocation;)V
    .registers 13

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/16 v5, 0xa1

    const/4 v9, 0x0

    new-instance v1, Lcom/baidu/location/BDLocation;

    invoke-direct {v1, p1}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->hasAddr()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddress()Lcom/baidu/location/Address;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/l;->w:Lcom/baidu/location/Address;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/location/a/l;->z:D

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/location/a/l;->A:D

    :cond_23
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocationDescribe()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocationDescribe()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/l;->x:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/location/a/l;->z:D

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/location/a/l;->A:D

    :cond_3b
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/l;->y:Ljava/util/List;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/location/a/l;->z:D

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/location/a/l;->A:D

    :cond_53
    invoke-static {}, Lcom/baidu/location/b/e;->a()Lcom/baidu/location/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/e;->i()Z

    move-result v1

    if-eqz v1, :cond_211

    move v1, v0

    :goto_5e
    if-eqz v1, :cond_be

    invoke-static {}, Lcom/baidu/location/b/e;->a()Lcom/baidu/location/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/e;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Lcom/baidu/location/BDLocation;

    invoke-direct {v10, v0}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/location/d/j;->g:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    sget-boolean v0, Lcom/baidu/location/d/j;->h:Z

    if-nez v0, :cond_7f

    sget-boolean v0, Lcom/baidu/location/d/j;->i:Z

    if-eqz v0, :cond_b3

    :cond_7f
    new-array v8, v3, [F

    iget-wide v0, p0, Lcom/baidu/location/a/l;->A:D

    iget-wide v2, p0, Lcom/baidu/location/a/l;->z:D

    invoke-virtual {v10}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v10}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v8, v9

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b3

    iget-object v0, p0, Lcom/baidu/location/a/l;->w:Lcom/baidu/location/Address;

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/baidu/location/a/l;->w:Lcom/baidu/location/Address;

    invoke-virtual {v10, v0}, Lcom/baidu/location/BDLocation;->setAddr(Lcom/baidu/location/Address;)V

    :cond_a1
    iget-object v0, p0, Lcom/baidu/location/a/l;->x:Ljava/lang/String;

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/baidu/location/a/l;->x:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/baidu/location/BDLocation;->setLocationDescribe(Ljava/lang/String;)V

    :cond_aa
    iget-object v0, p0, Lcom/baidu/location/a/l;->y:Ljava/util/List;

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcom/baidu/location/a/l;->y:Ljava/util/List;

    invoke-virtual {v10, v0}, Lcom/baidu/location/BDLocation;->setPoiList(Ljava/util/List;)V

    :cond_b3
    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lcom/baidu/location/a/l;->k()V

    :goto_bd
    return-void

    :cond_be
    iget-boolean v1, p0, Lcom/baidu/location/a/l;->G:Z

    if-eqz v1, :cond_10b

    new-array v8, v3, [F

    iget-object v0, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_df

    iget-object v0, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v2}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    :cond_df
    aget v0, v8, v9

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_fa

    iput-object p1, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    iget-boolean v0, p0, Lcom/baidu/location/a/l;->H:Z

    if-nez v0, :cond_f6

    iput-boolean v9, p0, Lcom/baidu/location/a/l;->H:Z

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    :cond_f6
    :goto_f6
    invoke-direct {p0}, Lcom/baidu/location/a/l;->k()V

    goto :goto_bd

    :cond_fa
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getUserIndoorState()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_f6

    iput-object p1, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    goto :goto_f6

    :cond_10b
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v2, 0xa7

    if-ne v1, v2, :cond_197

    invoke-static {}, Lcom/baidu/location/a/b;->a()Lcom/baidu/location/a/b;

    move-result-object v1

    const/16 v2, 0xa7

    const/16 v3, 0x8

    const-string v4, "NetWork location failed because baidu location service can not caculate the location!"

    invoke-virtual {v1, v2, v3, v4}, Lcom/baidu/location/a/b;->a(IILjava/lang/String;)V

    :cond_120
    :goto_120
    iput-object v6, p0, Lcom/baidu/location/a/l;->m:Lcom/baidu/location/BDLocation;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    if-ne v1, v5, :cond_20c

    const-string v1, "cl"

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20c

    iget-object v1, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    if-eqz v1, :cond_20c

    iget-object v1, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    if-ne v1, v5, :cond_20c

    const-string v1, "wf"

    iget-object v2, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v2}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/baidu/location/a/l;->v:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7530

    cmp-long v1, v1, v3

    if-gez v1, :cond_20c

    iput-object p1, p0, Lcom/baidu/location/a/l;->m:Lcom/baidu/location/BDLocation;

    :goto_15d
    if-eqz v0, :cond_1f6

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v1, v2}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    :goto_168
    invoke-static {p1}, Lcom/baidu/location/d/j;->a(Lcom/baidu/location/BDLocation;)Z

    move-result v1

    if-eqz v1, :cond_205

    if-nez v0, :cond_172

    iput-object p1, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    :cond_172
    :goto_172
    sget-object v0, Lcom/baidu/location/a/l;->c:Ljava/lang/String;

    const-string v1, "ssid\":\""

    const-string v2, "\""

    invoke-static {v0, v1, v2}, Lcom/baidu/location/d/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_209

    iget-object v1, p0, Lcom/baidu/location/a/l;->n:Lcom/baidu/location/b/g;

    if-eqz v1, :cond_209

    iget-object v1, p0, Lcom/baidu/location/a/l;->n:Lcom/baidu/location/b/g;

    invoke-virtual {v1, v0}, Lcom/baidu/location/b/g;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/l;->k:Ljava/lang/String;

    :goto_18c
    invoke-static {}, Lcom/baidu/location/b/h;->i()Z

    move-result v0

    if-eqz v0, :cond_192

    :cond_192
    invoke-direct {p0}, Lcom/baidu/location/a/l;->k()V

    goto/16 :goto_bd

    :cond_197
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    if-ne v1, v5, :cond_120

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_20f

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/location/d/j;->b(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_1af

    if-ne v1, v3, :cond_20f

    :cond_1af
    move v1, v0

    :goto_1b0
    if-eqz v1, :cond_1bd

    invoke-static {}, Lcom/baidu/location/a/b;->a()Lcom/baidu/location/a/b;

    move-result-object v1

    const-string v2, "NetWork location successful, open gps will be better!"

    invoke-virtual {v1, v5, v0, v2}, Lcom/baidu/location/a/b;->a(IILjava/lang/String;)V

    goto/16 :goto_120

    :cond_1bd
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_120

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_120

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_120

    invoke-static {}, Lcom/baidu/location/b/h;->a()Lcom/baidu/location/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/h;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_120

    const-string v2, "&wifio=1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_120

    invoke-static {}, Lcom/baidu/location/a/b;->a()Lcom/baidu/location/a/b;

    move-result-object v1

    const-string v2, "NetWork location successful, open wifi will be better!"

    invoke-virtual {v1, v5, v3, v2}, Lcom/baidu/location/a/b;->a(IILjava/lang/String;)V

    goto/16 :goto_120

    :cond_1f6
    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/BDLocation;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/location/a/l;->v:J

    goto/16 :goto_168

    :cond_205
    iput-object v6, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    goto/16 :goto_172

    :cond_209
    iput-object v6, p0, Lcom/baidu/location/a/l;->k:Ljava/lang/String;

    goto :goto_18c

    :cond_20c
    move v0, v9

    goto/16 :goto_15d

    :cond_20f
    move v1, v9

    goto :goto_1b0

    :cond_211
    move v1, v9

    goto/16 :goto_5e
.end method

.method public c(Lcom/baidu/location/BDLocation;)V
    .registers 3

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, p1}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    iput-object v0, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    return-void
.end method

.method public d()V
    .registers 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/location/a/l;->r:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/l;->s:Z

    iput-boolean v1, p0, Lcom/baidu/location/a/l;->I:Z

    return-void
.end method

.method public e()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/a/l;->s:Z

    iput-boolean v1, p0, Lcom/baidu/location/a/l;->t:Z

    iput-boolean v1, p0, Lcom/baidu/location/a/l;->G:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/l;->H:Z

    invoke-virtual {p0}, Lcom/baidu/location/a/l;->i()V

    iput-boolean v1, p0, Lcom/baidu/location/a/l;->I:Z

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a/l;->x:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/location/Poi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/location/a/l;->y:Ljava/util/List;

    return-object v0
.end method

.method public h()V
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/a/l;->t:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/location/a/l;->h(Landroid/os/Message;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/l;->t:Z

    :cond_b
    return-void
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/a/l;->l:Lcom/baidu/location/BDLocation;

    return-void
.end method
