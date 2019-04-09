.class Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

.field private b:J

.field private c:J


# direct methods
.method private constructor <init>(Lcom/baidu/mapsdkplatform/comapi/favrite/a;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;->a:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mapsdkplatform/comapi/favrite/a;Lcom/baidu/mapsdkplatform/comapi/favrite/a$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;-><init>(Lcom/baidu/mapsdkplatform/comapi/favrite/a;)V

    return-void
.end method

.method private a()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;->b:J

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;)Z
    .registers 2

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;->c()Z

    move-result v0

    return v0
.end method

.method private b()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;->c:J

    return-void
.end method

.method static synthetic b(Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;->a()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;->b()V

    return-void
.end method

.method private c()Z
    .registers 5

    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;->c:J

    iget-wide v2, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
