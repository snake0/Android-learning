.class public final Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/baidu/mapapi/synchronization/RoleOptions;

.field private c:Lcom/baidu/mapapi/synchronization/DisplayOptions;

.field private d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/h;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/baidu/mapsdkplatform/comapi/synchronization/b/a;

.field private i:Landroid/os/HandlerThread;

.field private j:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;

.field private volatile k:I

.field private l:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;

.field private m:Z

.field private n:F

.field private o:J

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->g:Ljava/lang/String;

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/b/a;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/b/a;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->h:Lcom/baidu/mapsdkplatform/comapi/synchronization/b/a;

    iput v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->k:I

    iput-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->m:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->n:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->o:J

    iput v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->p:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/g;)V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;I)I
    .registers 2

    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->k:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->b(Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    move-result-object v0

    return-object v0
.end method

.method private a(I)Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->b:Lcom/baidu/mapapi/synchronization/RoleOptions;

    if-nez v0, :cond_e

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v1, "RoleOptions is null"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;-><init>()V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->b:Lcom/baidu/mapapi/synchronization/RoleOptions;

    invoke-virtual {v1}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->b:Lcom/baidu/mapapi/synchronization/RoleOptions;

    invoke-virtual {v1}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getDriverId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->b:Lcom/baidu/mapapi/synchronization/RoleOptions;

    invoke-virtual {v1}, Lcom/baidu/mapapi/synchronization/RoleOptions;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->a(I)V

    iget-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->m:Z

    if-eqz v1, :cond_41

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->g:Ljava/lang/String;

    :cond_41
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;->e(Ljava/lang/String;)V

    goto :goto_d
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;)Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->j:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;

    return-object v0
.end method

.method public static a()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;
    .registers 1

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$a;->a()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->d:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->d:Ljava/util/concurrent/BlockingQueue;

    :cond_b
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->m:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->m:Z

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v2, "InterruptedException happened when put item into queue"

    invoke-static {v1, v2, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1c
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->h:Lcom/baidu/mapsdkplatform/comapi/synchronization/b/a;

    if-nez v0, :cond_c

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v1, "HttpClient cannot be null"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->h:Lcom/baidu/mapsdkplatform/comapi/synchronization/b/a;

    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/g;

    invoke-direct {v1, p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/g;-><init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;)V

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/b/a;->a(Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/synchronization/b/e;)V

    goto :goto_b
.end method

.method private a(Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;)V
    .registers 14

    const/4 v1, 0x0

    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    if-nez v0, :cond_15

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v1, "There\'s no section route data"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    :goto_14
    return-void

    :cond_15
    aget-object v0, v3, v5

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    if-eq v10, v0, :cond_3b

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Section start position latlng invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v3, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_3b
    :try_start_3b
    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const/4 v7, 0x0

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V
    :try_end_56
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_56} :catch_89

    :goto_56
    array-length v4, v3

    if-ge v2, v4, :cond_14

    new-instance v4, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;

    invoke-direct {v4}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;-><init>()V

    invoke-virtual {v4, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;->a(Lcom/baidu/mapapi/model/LatLng;)V

    aget-object v5, v3, v2

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-eq v10, v6, :cond_93

    sget-object v4, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Section position latlng invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_86
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    :catch_89
    move-exception v0

    sget-object v4, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v5, "Get startPosition failed"

    invoke-static {v4, v5, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_56

    :cond_93
    :try_start_93
    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const/4 v8, 0x0

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V
    :try_end_ae
    .catch Ljava/lang/NumberFormatException; {:try_start_93 .. :try_end_ae} :catch_ba

    :goto_ae
    invoke-virtual {v4, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;->b(Lcom/baidu/mapapi/model/LatLng;)V

    invoke-virtual {p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->a()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo$RouteSectionInfo;)V

    move-object v1, v0

    goto :goto_86

    :catch_ba
    move-exception v0

    sget-object v5, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v6, "Get endPosition failed"

    invoke-static {v5, v6, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_ae
.end method

.method private a(Lorg/json/JSONArray;Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;)V
    .registers 14

    const/4 v7, 0x2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v1, "Invalid driver position data"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    const-string v1, "t"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->c()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->setTimeStamp(Ljava/lang/String;)V

    const-string v1, "p"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_35

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v1, "No position info data"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_35
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v0, v5

    if-nez v0, :cond_46

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v1, "Position info array is empty"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_46
    aget-object v0, v5, v4

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v0, v6

    if-eq v7, v0, :cond_59

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v1, "Position latlng invalid"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_59
    const/4 v1, 0x0

    :try_start_5a
    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const/4 v9, 0x0

    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V
    :try_end_75
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_75} :catch_b4

    :goto_75
    invoke-virtual {p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->c()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->setPoint(Lcom/baidu/mapapi/model/LatLng;)V

    const/4 v0, 0x1

    :try_start_7d
    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_86
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_86} :catch_be

    move-result-wide v0

    :goto_87
    invoke-virtual {p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->c()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->setAngle(D)V

    const/4 v0, 0x2

    :try_start_8f
    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_98
    .catch Ljava/lang/NumberFormatException; {:try_start_8f .. :try_end_98} :catch_c8

    move-result-wide v2

    :goto_99
    invoke-virtual {p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->c()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->setSpeed(D)V

    const/4 v0, 0x3

    :try_start_a1
    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_aa
    .catch Ljava/lang/NumberFormatException; {:try_start_a1 .. :try_end_aa} :catch_d1

    move-result v0

    :goto_ab
    invoke-virtual {p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->c()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/DriverPosition;->setOrderStateInPosition(I)V

    goto/16 :goto_17

    :catch_b4
    move-exception v0

    sget-object v6, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v7, "Get driver position failed"

    invoke-static {v6, v7, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_75

    :catch_be
    move-exception v0

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v6, "Get angle failed"

    invoke-static {v1, v6, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v0, v2

    goto :goto_87

    :catch_c8
    move-exception v0

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v6, "Get speed failed"

    invoke-static {v1, v6, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_99

    :catch_d1
    move-exception v0

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v2, "Get orderStateInPosition failed"

    invoke-static {v1, v2, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v4

    goto :goto_ab
.end method

.method private a(Lorg/json/JSONObject;Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;)V
    .registers 6

    const-string v0, "route"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_12

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v2, "parser route data"

    invoke-static {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->b(Lorg/json/JSONObject;Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;)V

    :cond_12
    const-string v0, "traffic"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_24

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v2, "parser traffic data"

    invoke-static {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->c(Lorg/json/JSONObject;Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;)V

    :cond_24
    const-string v0, "positions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_3c

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v2, "parser driver position data"

    invoke-static {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a(Lorg/json/JSONArray;Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;)V

    :cond_3c
    const-string v0, "run"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v2, "parser travelled distance and elapsed time data"

    invoke-static {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->c(Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;)V

    :cond_52
    const-string v0, "remain"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v2, "parser remain distance and estimated time data"

    invoke-static {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->d(Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;)V

    :cond_68
    const-string v0, "s"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->a(I)V

    const-string v0, "mtime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->a(Ljava/lang/String;)V

    const-string v0, "ext"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    const-string v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    :cond_b
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->l:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->l:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;

    const/16 v2, 0x7d3

    const-string v3, "Query track route failed."

    invoke-interface {v1, v2, v3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;->c(ILjava/lang/String;)V

    :cond_18
    :goto_18
    return v0

    :cond_19
    const-string v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_32

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->l:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->l:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;

    invoke-interface {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;->b(ILjava/lang/String;)V

    :cond_30
    const/4 v0, 0x1

    goto :goto_18

    :cond_32
    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->l:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->l:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;

    invoke-interface {v3, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;->c(ILjava/lang/String;)V

    goto :goto_18
.end method

.method static synthetic b(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;)I
    .registers 3

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->k:I

    return v0
.end method

.method private b(Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;
    .registers 6

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v2, "Response result is null"

    invoke-static {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    return-object v1

    :cond_f
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;-><init>()V

    :try_start_14
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a(Lorg/json/JSONObject;)Z

    move-result v3

    if-nez v3, :cond_32

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v2, "Response result is invalid"

    invoke-static {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_26} :catch_27

    goto :goto_e

    :catch_27
    move-exception v0

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v2, "JSONException happened when parser"

    invoke-static {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_30
    move-object v1, v0

    goto :goto_e

    :cond_32
    :try_start_32
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_40

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-gtz v3, :cond_48

    :cond_40
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v2, "No route and traffic and driver data"

    invoke-static {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_48
    invoke-direct {p0, v2, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a(Lorg/json/JSONObject;Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;)V
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_4b} :catch_27

    goto :goto_30
.end method

.method private b(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;)V
    .registers 11

    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->d()F

    move-result v0

    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->e()J

    move-result-wide v1

    iget v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->p:I

    if-eq v6, v3, :cond_1a

    const/4 v3, 0x2

    iget v4, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->p:I

    if-eq v3, v4, :cond_1a

    const/4 v3, 0x4

    iget v4, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->p:I

    if-ne v3, v4, :cond_40

    :cond_1a
    iget v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->p:I

    if-eq v3, v6, :cond_26

    iget-boolean v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->m:Z

    if-eqz v3, :cond_26

    iput v5, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->n:F

    iput v5, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->n:F

    :cond_26
    cmpl-float v3, v5, v0

    if-eqz v3, :cond_2c

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->n:F

    :cond_2c
    cmp-long v0, v7, v1

    if-eqz v0, :cond_32

    iput-wide v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->o:J

    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->l:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->l:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;

    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->n:F

    iget-wide v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->o:J

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;->a(FJ)V

    :cond_3f
    return-void

    :cond_40
    iput v5, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->n:F

    iput-wide v7, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->o:J

    goto :goto_32
.end method

.method static synthetic b(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->b(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;)V
    .registers 14

    const/4 v1, 0x0

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v0, v6

    if-nez v0, :cond_12

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v1, "There\'s no section traffic data"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void

    :cond_12
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    array-length v8, v6

    move v5, v1

    :goto_19
    if-ge v5, v8, :cond_11

    aget-object v0, v6, v5

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x3

    array-length v3, v4

    if-eq v2, v3, :cond_43

    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "section traffic data is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3f
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_19

    :cond_43
    const/4 v0, 0x0

    :try_start_44
    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_4d} :catch_73

    move-result v3

    const/4 v0, 0x1

    :try_start_4f
    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_58
    .catch Ljava/lang/NumberFormatException; {:try_start_4f .. :try_end_58} :catch_8a

    move-result v2

    const/4 v0, 0x2

    :try_start_5a
    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_63
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_63} :catch_8f

    move-result v0

    :goto_64
    move v4, v3

    :goto_65
    add-int v9, v3, v2

    if-ge v4, v9, :cond_82

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    :catch_73
    move-exception v0

    move-object v3, v0

    move v2, v1

    move v0, v1

    :goto_77
    sget-object v4, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v9, "Get traffic status info failed"

    invoke-static {v4, v9, v3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v2

    move v2, v0

    move v0, v1

    goto :goto_64

    :cond_82
    invoke-virtual {p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->b()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/TrafficInfo;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/TrafficInfo;->a(Ljava/util/ArrayList;)V

    goto :goto_3f

    :catch_8a
    move-exception v0

    move v2, v3

    move-object v3, v0

    move v0, v1

    goto :goto_77

    :catch_8f
    move-exception v0

    move-object v10, v0

    move v0, v2

    move v2, v3

    move-object v3, v10

    goto :goto_77
.end method

.method private b(Lorg/json/JSONObject;Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;)V
    .registers 5

    const-string v0, "c"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->a()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;->a(Z)V

    const-string v0, "f"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->f:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->a()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/RouteLineInfo;->a(Ljava/lang/String;)V

    const-string v0, "d"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-direct {p0, v0, p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a(Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;)V

    :cond_30
    return-void

    :cond_31
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic c(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->j()V

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;)V
    .registers 8

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    array-length v1, v2

    if-eq v0, v1, :cond_12

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v1, "The travelled data is null or invalid"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_14
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_1d} :catch_32

    move-result v0

    :goto_1e
    invoke-virtual {p2, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->a(F)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x1

    :try_start_24
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2d} :catch_3b

    move-result-wide v0

    :goto_2e
    invoke-virtual {p2, v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->a(J)V

    goto :goto_11

    :catch_32
    move-exception v1

    sget-object v3, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v4, "Get travelledDistance failed"

    invoke-static {v3, v4, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e

    :catch_3b
    move-exception v2

    sget-object v3, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v4, "Get elapsedTime failed"

    invoke-static {v3, v4, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e
.end method

.method private c(Lorg/json/JSONObject;Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;)V
    .registers 5

    const-string v0, "c"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->b()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/TrafficInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/TrafficInfo;->a(Z)V

    const-string v0, "f"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->b()Lcom/baidu/mapsdkplatform/comapi/synchronization/data/TrafficInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/TrafficInfo;->a(Ljava/lang/String;)V

    const-string v0, "d"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-direct {p0, v0, p2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->b(Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;)V

    :cond_30
    return-void

    :cond_31
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic d(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->k()V

    return-void
.end method

.method private d(Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;)V
    .registers 8

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    array-length v1, v2

    if-eq v0, v1, :cond_12

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v1, "The remain data is null or invalid: "

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_14
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_1d} :catch_32

    move-result v0

    :goto_1e
    invoke-virtual {p2, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->b(F)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x1

    :try_start_24
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2d} :catch_3b

    move-result-wide v0

    :goto_2e
    invoke-virtual {p2, v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;->b(J)V

    goto :goto_11

    :catch_32
    move-exception v1

    sget-object v3, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v4, "Get remainDistance failed"

    invoke-static {v3, v4, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e

    :catch_3b
    move-exception v2

    sget-object v3, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v4, "Get estimatedTime failed"

    invoke-static {v3, v4, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e
.end method

.method static synthetic i()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/h;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/h;

    invoke-interface {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/h;->a()V

    :cond_9
    return-void
.end method

.method private k()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/h;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/h;

    invoke-interface {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/h;->b()V

    :cond_9
    return-void
.end method


# virtual methods
.method a(IZ)V
    .registers 5

    iput-boolean p2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->m:Z

    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->p:I

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a(I)Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;

    move-result-object v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v1, "Data request option is null"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;

    invoke-direct {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;-><init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/e;)V

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/l;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a:Ljava/lang/String;

    const-string v1, "send url string is null"

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_25
    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->a(Ljava/lang/String;)V

    goto :goto_11
.end method

.method declared-synchronized a(Landroid/view/View;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->c:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->c:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->setStartPositionInfoWindowView(Landroid/view/View;)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1a

    :cond_a
    :goto_a
    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->l:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->l:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;

    const/16 v1, 0x3ec

    const-string v2, "DisplayOptions instance init null."

    invoke-interface {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;->c(ILjava/lang/String;)V
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1a

    goto :goto_a

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/baidu/mapapi/synchronization/DisplayOptions;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->c:Lcom/baidu/mapapi/synchronization/DisplayOptions;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/baidu/mapapi/synchronization/RoleOptions;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->b:Lcom/baidu/mapapi/synchronization/RoleOptions;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/h;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/h;

    return-void
.end method

.method a(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->l:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;

    return-void
.end method

.method public b()V
    .registers 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SyncDataStorage"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->i:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;-><init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->j:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;

    return-void
.end method

.method declared-synchronized b(Landroid/view/View;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->c:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->c:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->setEndPositionInfoWindowView(Landroid/view/View;)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1a

    :cond_a
    :goto_a
    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->l:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->l:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;

    const/16 v1, 0x3ec

    const-string v2, "DisplayOptions instance init null."

    invoke-interface {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;->c(ILjava/lang/String;)V
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1a

    goto :goto_a

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/h;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->e:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/h;

    :cond_7
    return-void
.end method

.method declared-synchronized c(Landroid/view/View;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->c:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->c:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->setCarInfoWindowView(Landroid/view/View;)Lcom/baidu/mapapi/synchronization/DisplayOptions;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1a

    :cond_a
    :goto_a
    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->l:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->l:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;

    const/16 v1, 0x3ec

    const-string v2, "DisplayOptions instance init null."

    invoke-interface {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/j;->c(ILjava/lang/String;)V
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1a

    goto :goto_a

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->k:I

    return v0
.end method

.method public e()Lcom/baidu/mapapi/synchronization/RoleOptions;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->b:Lcom/baidu/mapapi/synchronization/RoleOptions;

    return-object v0
.end method

.method public f()Lcom/baidu/mapapi/synchronization/DisplayOptions;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->c:Lcom/baidu/mapapi/synchronization/DisplayOptions;

    return-object v0
.end method

.method public g()Ljava/util/concurrent/BlockingQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/baidu/mapsdkplatform/comapi/synchronization/data/SyncResponseResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->d:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public h()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->m:Z

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->j:Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/data/f;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method
