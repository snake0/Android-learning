.class public Lcom/baidu/platform/comapi/pano/a;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/baidu/mapapi/http/AsyncHttpClient;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/mapapi/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/mapapi/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/pano/a;->a:Lcom/baidu/mapapi/http/AsyncHttpClient;

    return-void
.end method

.method static synthetic a(Lcom/baidu/platform/comapi/pano/a;Ljava/lang/String;)Lcom/baidu/platform/comapi/pano/c;
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/pano/a;->a(Ljava/lang/String;)Lcom/baidu/platform/comapi/pano/c;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/baidu/platform/comapi/pano/c;
    .registers 8

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_b
    new-instance v0, Lcom/baidu/platform/comapi/pano/c;

    sget-object v1, Lcom/baidu/platform/comapi/pano/PanoStateError;->c:Lcom/baidu/platform/comapi/pano/PanoStateError;

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/pano/c;-><init>(Lcom/baidu/platform/comapi/pano/PanoStateError;)V

    :cond_12
    :goto_12
    return-object v0

    :cond_13
    :try_start_13
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_18} :catch_28

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_34

    new-instance v0, Lcom/baidu/platform/comapi/pano/c;

    sget-object v1, Lcom/baidu/platform/comapi/pano/PanoStateError;->c:Lcom/baidu/platform/comapi/pano/PanoStateError;

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/pano/c;-><init>(Lcom/baidu/platform/comapi/pano/PanoStateError;)V

    goto :goto_12

    :catch_28
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v0, Lcom/baidu/platform/comapi/pano/c;

    sget-object v1, Lcom/baidu/platform/comapi/pano/PanoStateError;->c:Lcom/baidu/platform/comapi/pano/PanoStateError;

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/pano/c;-><init>(Lcom/baidu/platform/comapi/pano/PanoStateError;)V

    goto :goto_12

    :cond_34
    const-string v3, "error"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7f

    const-string v2, "content"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_4c

    new-instance v0, Lcom/baidu/platform/comapi/pano/c;

    sget-object v1, Lcom/baidu/platform/comapi/pano/PanoStateError;->c:Lcom/baidu/platform/comapi/pano/PanoStateError;

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/pano/c;-><init>(Lcom/baidu/platform/comapi/pano/PanoStateError;)V

    goto :goto_12

    :cond_4c
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_50
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_12

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "poiinfo"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_65

    :goto_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    :cond_65
    new-instance v0, Lcom/baidu/platform/comapi/pano/c;

    sget-object v4, Lcom/baidu/platform/comapi/pano/PanoStateError;->a:Lcom/baidu/platform/comapi/pano/PanoStateError;

    invoke-direct {v0, v4}, Lcom/baidu/platform/comapi/pano/c;-><init>(Lcom/baidu/platform/comapi/pano/PanoStateError;)V

    const-string v4, "PID"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/platform/comapi/pano/c;->a(Ljava/lang/String;)V

    const-string v4, "hasstreet"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/baidu/platform/comapi/pano/c;->a(I)V

    goto :goto_62

    :cond_7f
    new-instance v0, Lcom/baidu/platform/comapi/pano/c;

    sget-object v1, Lcom/baidu/platform/comapi/pano/PanoStateError;->b:Lcom/baidu/platform/comapi/pano/PanoStateError;

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/pano/c;-><init>(Lcom/baidu/platform/comapi/pano/PanoStateError;)V

    goto :goto_12
.end method

.method private a(Landroid/net/Uri$Builder;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mapapi/http/HttpClient;->getPhoneInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sign"

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->getSignMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_f
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/baidu/platform/comapi/pano/a$a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/baidu/platform/comapi/pano/a$a",
            "<",
            "Lcom/baidu/platform/comapi/pano/c;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    sget-boolean v1, Lcom/baidu/mapapi/http/HttpClient;->isHttpsEnable:Z

    if-eqz v1, :cond_3c

    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_e
    const-string v1, "api.map.baidu.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "/sdkproxy/lbs_androidsdk/pano/v1/"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "qt"

    const-string v2, "poi"

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/platform/comapi/pano/a;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uid"

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comapi/pano/a;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "action"

    const-string v2, "0"

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/platform/comapi/pano/a;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/mapapi/http/HttpClient;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_42

    new-instance v0, Lcom/baidu/platform/comapi/pano/c;

    sget-object v1, Lcom/baidu/platform/comapi/pano/PanoStateError;->d:Lcom/baidu/platform/comapi/pano/PanoStateError;

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/pano/c;-><init>(Lcom/baidu/platform/comapi/pano/PanoStateError;)V

    invoke-interface {p2, v0}, Lcom/baidu/platform/comapi/pano/a$a;->a(Ljava/lang/Object;)V

    :goto_3b
    return-void

    :cond_3c
    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_e

    :cond_42
    const-string v2, "token"

    invoke-direct {p0, v0, v2, v1}, Lcom/baidu/platform/comapi/pano/a;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/baidu/platform/comapi/pano/a;->a(Landroid/net/Uri$Builder;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/platform/comapi/pano/a;->a:Lcom/baidu/mapapi/http/AsyncHttpClient;

    new-instance v2, Lcom/baidu/platform/comapi/pano/b;

    invoke-direct {v2, p0, p2}, Lcom/baidu/platform/comapi/pano/b;-><init>(Lcom/baidu/platform/comapi/pano/a;Lcom/baidu/platform/comapi/pano/a$a;)V

    invoke-virtual {v1, v0, v2}, Lcom/baidu/mapapi/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;)V

    goto :goto_3b
.end method
