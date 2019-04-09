.class public Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static e:Z


# instance fields
.field private b:Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->a:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->e:Z

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->c:Z

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->d:Z

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;)V

    return-void
.end method

.method private a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    const-string v1, "order_id"

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->b(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    const-string v1, "company"

    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    const-string v1, "order_attr"

    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    const-string v1, "status"

    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    const-string v1, "pull_type"

    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->i()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    const-string v1, "route_finger"

    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    const-string v1, "traffic_finger"

    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    const-string v1, "pos_num"

    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->c(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;)V

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->d(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;)V

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->c:Z

    if-eqz v0, :cond_71

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->b()V

    :cond_71
    return-void
.end method

.method private b(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "9sc87244121ip32590fq234mn6641tx7"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The orderId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; result = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private b()V
    .registers 5

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/SyncSysInfo;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->a:Ljava/lang/String;

    const-string v1, "Token is null, permission check again"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->permissionCheck()I

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission check result is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    const-string v2, "token"

    invoke-virtual {v1, v2, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    goto :goto_2b
.end method

.method private c()Ljava/lang/String;
    .registers 2

    sget-boolean v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->e:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/b/f;->a()Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/b/f;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private c(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;)V
    .registers 5

    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->g()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$b;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$b;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$b;

    if-ne v1, v0, :cond_12

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    const-string v1, "trip_mode"

    const-string v2, "driving"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    :goto_11
    return-void

    :cond_12
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$b;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$b;

    if-ne v1, v0, :cond_20

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    const-string v1, "trip_mode"

    const-string v2, "riding"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    goto :goto_11

    :cond_20
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    const-string v1, "trip_mode"

    const-string v2, "driving"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    goto :goto_11
.end method

.method private d(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;)V
    .registers 5

    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->f()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;->c:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    if-ne v1, v0, :cond_12

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    const-string v1, "coord_type"

    const-string v2, "bd09ll"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    :goto_11
    return-void

    :cond_12
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;->d:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    if-ne v1, v0, :cond_20

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    const-string v1, "coord_type"

    const-string v2, "bd09mc"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    goto :goto_11

    :cond_20
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    if-ne v1, v0, :cond_2e

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    const-string v1, "coord_type"

    const-string v2, "wgs84"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    goto :goto_11

    :cond_2e
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e$a;

    if-ne v1, v0, :cond_3c

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    const-string v1, "coord_type"

    const-string v2, "gcj02"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    goto :goto_11

    :cond_3c
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    const-string v1, "coord_type"

    const-string v2, "bd09ll"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    goto :goto_11
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->b:Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/SyncSysInfo;->getPhoneInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->d:Z

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->getSignMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&sign="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_27
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
