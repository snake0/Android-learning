.class public abstract Lcom/baidu/platform/base/a;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Ljava/util/concurrent/locks/Lock;

.field private b:Lcom/baidu/mapapi/http/AsyncHttpClient;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Lcom/baidu/mapapi/search/district/DistrictResult;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/mapapi/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/mapapi/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/base/a;->b:Lcom/baidu/mapapi/http/AsyncHttpClient;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/platform/base/a;->c:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/base/a;->a:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/platform/base/a;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/base/a;->e:Lcom/baidu/mapapi/search/district/DistrictResult;

    return-void
.end method

.method static synthetic a(Lcom/baidu/platform/base/a;)Lcom/baidu/mapapi/http/AsyncHttpClient;
    .registers 2

    iget-object v0, p0, Lcom/baidu/platform/base/a;->b:Lcom/baidu/mapapi/http/AsyncHttpClient;

    return-object v0
.end method

.method private a(Lcom/baidu/mapapi/http/AsyncHttpClient;Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;Lcom/baidu/mapapi/search/core/SearchResult;)V
    .registers 6

    check-cast p3, Lcom/baidu/mapapi/search/district/DistrictResult;

    invoke-virtual {p3}, Lcom/baidu/mapapi/search/district/DistrictResult;->getCityName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/platform/core/a/c;

    invoke-direct {v1, v0}, Lcom/baidu/platform/core/a/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/baidu/platform/core/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/baidu/mapapi/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/http/HttpClient$HttpStateError;Lcom/baidu/platform/base/d;Ljava/lang/Object;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{SDK_InnerError:{httpStateError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/platform/base/d;->a(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/SearchResult;

    move-result-object v0

    invoke-direct {p0, v0, p3, p2}, Lcom/baidu/platform/base/a;->a(Lcom/baidu/mapapi/search/core/SearchResult;Ljava/lang/Object;Lcom/baidu/platform/base/d;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/search/core/SearchResult;Ljava/lang/Object;Lcom/baidu/platform/base/d;)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/platform/base/a;->c:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/platform/base/c;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/baidu/platform/base/c;-><init>(Lcom/baidu/platform/base/a;Lcom/baidu/platform/base/d;Lcom/baidu/mapapi/search/core/SearchResult;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/baidu/platform/base/a;Lcom/baidu/mapapi/http/HttpClient$HttpStateError;Lcom/baidu/platform/base/d;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/platform/base/a;->a(Lcom/baidu/mapapi/http/HttpClient$HttpStateError;Lcom/baidu/platform/base/d;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/platform/base/a;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/platform/base/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/platform/base/a;Ljava/lang/String;Lcom/baidu/platform/base/d;Ljava/lang/Object;Lcom/baidu/mapapi/http/AsyncHttpClient;Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/baidu/platform/base/a;->a(Ljava/lang/String;Lcom/baidu/platform/base/d;Ljava/lang/Object;Lcom/baidu/mapapi/http/AsyncHttpClient;Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/baidu/platform/base/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "BaseSearch"

    const-string v1, "Permission check unfinished, try again"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->permissionCheck()I

    move-result v0

    if-eqz v0, :cond_2b

    const-string v1, "BaseSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The authorized result is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/baidu/platform/base/d;Ljava/lang/Object;Lcom/baidu/mapapi/http/AsyncHttpClient;Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;)V
    .registers 9

    invoke-virtual {p2, p1}, Lcom/baidu/platform/base/d;->a(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/SearchResult;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/baidu/platform/base/a;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/baidu/mapapi/search/core/SearchResult;->status:I

    invoke-direct {p0, p2, v1}, Lcom/baidu/platform/base/a;->a(Lcom/baidu/platform/base/d;Lcom/baidu/mapapi/search/core/SearchResult;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, p4, p5, v1}, Lcom/baidu/platform/base/a;->a(Lcom/baidu/mapapi/http/AsyncHttpClient;Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;Lcom/baidu/mapapi/search/core/SearchResult;)V

    :goto_13
    return-void

    :cond_14
    instance-of v0, p2, Lcom/baidu/platform/core/a/b;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/baidu/platform/base/a;->e:Lcom/baidu/mapapi/search/district/DistrictResult;

    if-eqz v0, :cond_34

    move-object v0, v1

    check-cast v0, Lcom/baidu/mapapi/search/district/DistrictResult;

    iget-object v2, p0, Lcom/baidu/platform/base/a;->e:Lcom/baidu/mapapi/search/district/DistrictResult;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/district/DistrictResult;->getCityCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/search/district/DistrictResult;->setCityCode(I)V

    move-object v0, v1

    check-cast v0, Lcom/baidu/mapapi/search/district/DistrictResult;

    iget-object v2, p0, Lcom/baidu/platform/base/a;->e:Lcom/baidu/mapapi/search/district/DistrictResult;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/district/DistrictResult;->getCenterPt()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/search/district/DistrictResult;->setCenterPt(Lcom/baidu/mapapi/model/LatLng;)V

    :cond_34
    invoke-direct {p0, v1, p3, p2}, Lcom/baidu/platform/base/a;->a(Lcom/baidu/mapapi/search/core/SearchResult;Ljava/lang/Object;Lcom/baidu/platform/base/d;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/platform/base/a;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/base/a;->e:Lcom/baidu/mapapi/search/district/DistrictResult;

    check-cast p2, Lcom/baidu/platform/core/a/b;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/baidu/platform/core/a/b;->a(Z)V

    goto :goto_13

    :cond_44
    invoke-direct {p0, v1, p3, p2}, Lcom/baidu/platform/base/a;->a(Lcom/baidu/mapapi/search/core/SearchResult;Ljava/lang/Object;Lcom/baidu/platform/base/d;)V

    goto :goto_13
.end method

.method private a(Lcom/baidu/platform/base/d;Lcom/baidu/mapapi/search/core/SearchResult;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/baidu/platform/core/a/b;

    if-nez v0, :cond_8

    move v0, v1

    :goto_7
    return v0

    :cond_8
    sget-object v3, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    move-object v0, p2

    check-cast v0, Lcom/baidu/mapapi/search/district/DistrictResult;

    iget-object v0, v0, Lcom/baidu/mapapi/search/district/DistrictResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-eq v3, v0, :cond_13

    move v0, v1

    goto :goto_7

    :cond_13
    move-object v0, p2

    check-cast v0, Lcom/baidu/mapapi/search/district/DistrictResult;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/district/DistrictResult;->getCityName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    move v0, v1

    goto :goto_7

    :cond_1e
    iget-boolean v0, p0, Lcom/baidu/platform/base/a;->d:Z

    if-eqz v0, :cond_2f

    iput-boolean v1, p0, Lcom/baidu/platform/base/a;->d:Z

    check-cast p2, Lcom/baidu/mapapi/search/district/DistrictResult;

    iput-object p2, p0, Lcom/baidu/platform/base/a;->e:Lcom/baidu/mapapi/search/district/DistrictResult;

    check-cast p1, Lcom/baidu/platform/core/a/b;

    invoke-virtual {p1, v2}, Lcom/baidu/platform/core/a/b;->a(Z)V

    move v0, v2

    goto :goto_7

    :cond_2f
    move v0, v1

    goto :goto_7
.end method

.method private b(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "SDK_InnerError"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "SDK_InnerError"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "PermissionCheckError"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "BaseSearch"

    const-string v2, "Permission check unfinished"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_23} :catch_26

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x1

    goto :goto_23

    :catch_26
    move-exception v1

    const-string v1, "BaseSearch"

    const-string v2, "Create JSONObject failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method private c(Ljava/lang/String;)I
    .registers 5

    const/16 v0, 0x27dc

    if-eqz p1, :cond_c

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    :try_start_d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_c

    :cond_21
    const-string v2, "status_sp"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "status_sp"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_c

    :cond_30
    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_43} :catch_45

    move-result v0

    goto :goto_c

    :catch_45
    move-exception v1

    const-string v1, "BaseSearch"

    const-string v2, "Create JSONObject failed when get response result status"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method


# virtual methods
.method protected a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p3, :cond_f

    const-class v1, Lcom/baidu/platform/base/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The SearchParser is null, must be applied."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p1}, Lcom/baidu/platform/base/e;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_37

    const-string v2, "BaseSearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The sendurl is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "{SDK_InnerError:{PermissionCheckError:Error}}"

    invoke-virtual {p3, v1}, Lcom/baidu/platform/base/d;->a(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/SearchResult;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/baidu/platform/base/a;->a(Lcom/baidu/mapapi/search/core/SearchResult;Ljava/lang/Object;Lcom/baidu/platform/base/d;)V

    goto :goto_e

    :cond_37
    iget-object v0, p0, Lcom/baidu/platform/base/a;->b:Lcom/baidu/mapapi/http/AsyncHttpClient;

    new-instance v2, Lcom/baidu/platform/base/b;

    invoke-direct {v2, p0, p3, p2}, Lcom/baidu/platform/base/b;-><init>(Lcom/baidu/platform/base/a;Lcom/baidu/platform/base/d;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;)V

    const/4 v0, 0x1

    goto :goto_e
.end method
