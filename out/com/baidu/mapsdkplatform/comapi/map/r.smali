.class public Lcom/baidu/mapsdkplatform/comapi/map/r;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Lcom/baidu/mapsdkplatform/comapi/map/r;


# instance fields
.field private b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

.field private d:Lcom/baidu/mapsdkplatform/comapi/map/w;

.field private e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/mapsdkplatform/comapi/map/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/map/r;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/mapsdkplatform/comapi/map/r;
    .registers 1

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/r;->c:Lcom/baidu/mapsdkplatform/comapi/map/r;

    if-nez v0, :cond_10

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/r;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/r;-><init>()V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/map/r;->c:Lcom/baidu/mapsdkplatform/comapi/map/r;

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/r;->c:Lcom/baidu/mapsdkplatform/comapi/map/r;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/r;->g()V

    :cond_10
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/r;->c:Lcom/baidu/mapsdkplatform/comapi/map/r;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/map/r;)Lcom/baidu/mapsdkplatform/comapi/map/w;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    return-object v0
.end method

.method static synthetic f()Lcom/baidu/mapsdkplatform/comapi/map/r;
    .registers 1

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/r;->c:Lcom/baidu/mapsdkplatform/comapi/map/r;

    return-object v0
.end method

.method private g()V
    .registers 3

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/r;->h()V

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/w;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/w;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/s;

    invoke-direct {v0, p0}, Lcom/baidu/mapsdkplatform/comapi/map/s;-><init>(Lcom/baidu/mapsdkplatform/comapi/map/r;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->e:Landroid/os/Handler;

    const v0, 0xff09

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->e:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/MessageCenter;->registMessage(ILandroid/os/Handler;)V

    return-void
.end method

.method private h()V
    .registers 19

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->initAppDirectory(Landroid/content/Context;)V

    new-instance v2, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-direct {v2}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(I)Z

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

    if-lt v1, v6, :cond_107

    const-string v1, "/h/"

    :goto_41
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

    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getScreenSizeX()I

    move-result v11

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getScreenSizeY()I

    move-result v12

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensityDpi()I

    move-result v13

    const/16 v17, 0x0

    invoke-virtual/range {v1 .. v17}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIIII)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->d()V

    return-void

    :cond_107
    const-string v1, "/l/"

    goto/16 :goto_41
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapsdkplatform/comapi/map/q;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v1, :cond_f

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v1, p1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_24
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "dataset"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_e

    move v4, v3

    :goto_3a
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v4, v2, :cond_d3

    new-instance v6, Lcom/baidu/mapsdkplatform/comapi/map/q;

    invoke-direct {v6}, Lcom/baidu/mapsdkplatform/comapi/map/q;-><init>()V

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v7, "id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x7d0

    if-le v7, v8, :cond_63

    const/16 v8, 0xb60

    if-eq v7, v8, :cond_63

    const/16 v8, 0xb5f

    if-eq v7, v8, :cond_63

    const/16 v8, 0x2328

    if-eq v7, v8, :cond_63

    :goto_5f
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3a

    :cond_63
    iput v7, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->a:I

    const-string v7, "name"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->b:Ljava/lang/String;

    const-string v7, "mapsize"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->c:I

    const-string v7, "cty"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->d:I

    const-string v7, "child"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c9

    const-string v7, "child"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    :goto_91
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_c6

    new-instance v9, Lcom/baidu/mapsdkplatform/comapi/map/q;

    invoke-direct {v9}, Lcom/baidu/mapsdkplatform/comapi/map/q;-><init>()V

    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "id"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/baidu/mapsdkplatform/comapi/map/q;->a:I

    const-string v11, "name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/baidu/mapsdkplatform/comapi/map/q;->b:Ljava/lang/String;

    const-string v11, "mapsize"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/baidu/mapsdkplatform/comapi/map/q;->c:I

    const-string v11, "cty"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/baidu/mapsdkplatform/comapi/map/q;->d:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    :cond_c6
    invoke-virtual {v6, v8}, Lcom/baidu/mapsdkplatform/comapi/map/q;->a(Ljava/util/ArrayList;)V

    :cond_c9
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_cc
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_cc} :catch_cd

    goto :goto_5f

    :catch_cd
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_e

    :cond_d3
    move-object v0, v1

    goto/16 :goto_e
.end method

.method public a(Lcom/baidu/mapsdkplatform/comapi/map/v;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/w;->a(Lcom/baidu/mapsdkplatform/comapi/map/v;)V

    :cond_9
    return-void
.end method

.method public a(I)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-eqz v1, :cond_7

    if-gez p1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/16 v1, 0x7d0

    if-le p1, v1, :cond_18

    const/16 v1, 0xb60

    if-eq p1, v1, :cond_18

    const/16 v1, 0xb5f

    if-eq p1, v1, :cond_18

    const/16 v1, 0x2328

    if-ne p1, v1, :cond_7

    :cond_18
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->d(I)Z

    move-result v0

    goto :goto_7
.end method

.method public a(ZZ)Z
    .registers 4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(ZZ)Z

    move-result v0

    goto :goto_5
.end method

.method public b()V
    .registers 3

    const v0, 0xff09

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->e:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/MessageCenter;->unregistMessage(ILandroid/os/Handler;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->b(I)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/map/r;->c:Lcom/baidu/mapsdkplatform/comapi/map/r;

    return-void
.end method

.method public b(Lcom/baidu/mapsdkplatform/comapi/map/v;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/w;->b(Lcom/baidu/mapsdkplatform/comapi/map/v;)V

    :cond_9
    return-void
.end method

.method public b(I)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-eqz v1, :cond_7

    if-gez p1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/16 v1, 0x7d0

    if-le p1, v1, :cond_18

    const/16 v1, 0xb60

    if-eq p1, v1, :cond_18

    const/16 v1, 0xb5f

    if-eq p1, v1, :cond_18

    const/16 v1, 0x2328

    if-ne p1, v1, :cond_7

    :cond_18
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v1, p1, v0, v0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(IZI)Z

    move-result v0

    goto :goto_7
.end method

.method public c()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapsdkplatform/comapi/map/q;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v1, :cond_7

    :goto_6
    return-object v0

    :cond_7
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_12
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "dataset"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v4, v3

    :goto_1e
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v4, v2, :cond_a7

    new-instance v6, Lcom/baidu/mapsdkplatform/comapi/map/q;

    invoke-direct {v6}, Lcom/baidu/mapsdkplatform/comapi/map/q;-><init>()V

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v7, "id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->a:I

    const-string v7, "name"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->b:Ljava/lang/String;

    const-string v7, "mapsize"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->c:I

    const-string v7, "cty"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->d:I

    const-string v7, "child"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_99

    const-string v7, "child"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    :goto_61
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_96

    new-instance v9, Lcom/baidu/mapsdkplatform/comapi/map/q;

    invoke-direct {v9}, Lcom/baidu/mapsdkplatform/comapi/map/q;-><init>()V

    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "id"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/baidu/mapsdkplatform/comapi/map/q;->a:I

    const-string v11, "name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/baidu/mapsdkplatform/comapi/map/q;->b:Ljava/lang/String;

    const-string v11, "mapsize"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/baidu/mapsdkplatform/comapi/map/q;->c:I

    const-string v11, "cty"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/baidu/mapsdkplatform/comapi/map/q;->d:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    :cond_96
    invoke-virtual {v6, v8}, Lcom/baidu/mapsdkplatform/comapi/map/q;->a(Ljava/util/ArrayList;)V

    :cond_99
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9c
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_9c} :catch_a1

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_1e

    :catch_a1
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_6

    :cond_a7
    move-object v0, v1

    goto/16 :goto_6
.end method

.method public c(I)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-eqz v1, :cond_7

    if-gez p1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v1, p1, v0, v0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->b(IZI)Z

    move-result v0

    goto :goto_7
.end method

.method public d()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapsdkplatform/comapi/map/q;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    const-string v1, ""

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v1, :cond_9

    :goto_8
    return-object v0

    :cond_9
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_16
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "dataset"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v4, v3

    :goto_22
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v4, v2, :cond_b8

    new-instance v6, Lcom/baidu/mapsdkplatform/comapi/map/q;

    invoke-direct {v6}, Lcom/baidu/mapsdkplatform/comapi/map/q;-><init>()V

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v7, "id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x7d0

    if-le v7, v8, :cond_4b

    const/16 v8, 0xb60

    if-eq v7, v8, :cond_4b

    const/16 v8, 0xb5f

    if-eq v7, v8, :cond_4b

    const/16 v8, 0x2328

    if-eq v7, v8, :cond_4b

    :goto_47
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_22

    :cond_4b
    iput v7, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->a:I

    const-string v7, "name"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->b:Ljava/lang/String;

    const-string v7, "mapsize"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->c:I

    const-string v7, "cty"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->d:I

    const-string v7, "child"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b1

    const-string v7, "child"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    :goto_79
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_ae

    new-instance v9, Lcom/baidu/mapsdkplatform/comapi/map/q;

    invoke-direct {v9}, Lcom/baidu/mapsdkplatform/comapi/map/q;-><init>()V

    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "id"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/baidu/mapsdkplatform/comapi/map/q;->a:I

    const-string v11, "name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/baidu/mapsdkplatform/comapi/map/q;->b:Ljava/lang/String;

    const-string v11, "mapsize"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/baidu/mapsdkplatform/comapi/map/q;->c:I

    const-string v11, "cty"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/baidu/mapsdkplatform/comapi/map/q;->d:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    :cond_ae
    invoke-virtual {v6, v8}, Lcom/baidu/mapsdkplatform/comapi/map/q;->a(Ljava/util/ArrayList;)V

    :cond_b1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b4
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_b4} :catch_b5
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_b4} :catch_bb

    goto :goto_47

    :catch_b5
    move-exception v1

    goto/16 :goto_8

    :cond_b8
    move-object v0, v1

    goto/16 :goto_8

    :catch_bb
    move-exception v1

    goto/16 :goto_8
.end method

.method public d(I)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->b(IZI)Z

    move-result v0

    goto :goto_5
.end method

.method public e()Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapsdkplatform/comapi/map/u;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    const-string v1, ""

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_1f
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "dataset"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v5, v4

    :goto_31
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v5, v2, :cond_c0

    new-instance v7, Lcom/baidu/mapsdkplatform/comapi/map/u;

    invoke-direct {v7}, Lcom/baidu/mapsdkplatform/comapi/map/u;-><init>()V

    new-instance v8, Lcom/baidu/mapsdkplatform/comapi/map/t;

    invoke-direct {v8}, Lcom/baidu/mapsdkplatform/comapi/map/t;-><init>()V

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v2, "id"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v8, Lcom/baidu/mapsdkplatform/comapi/map/t;->a:I

    const-string v2, "name"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/baidu/mapsdkplatform/comapi/map/t;->b:Ljava/lang/String;

    const-string v2, "pinyin"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/baidu/mapsdkplatform/comapi/map/t;->c:Ljava/lang/String;

    const-string v2, "mapoldsize"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v8, Lcom/baidu/mapsdkplatform/comapi/map/t;->h:I

    const-string v2, "ratio"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v8, Lcom/baidu/mapsdkplatform/comapi/map/t;->i:I

    const-string v2, "status"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v8, Lcom/baidu/mapsdkplatform/comapi/map/t;->l:I

    new-instance v2, Lcom/baidu/mapapi/model/inner/GeoPoint;

    const-string v10, "y"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    int-to-double v10, v10

    const-string v12, "x"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    int-to-double v12, v12

    invoke-direct {v2, v10, v11, v12, v13}, Lcom/baidu/mapapi/model/inner/GeoPoint;-><init>(DD)V

    iput-object v2, v8, Lcom/baidu/mapsdkplatform/comapi/map/t;->g:Lcom/baidu/mapapi/model/inner/GeoPoint;

    const-string v2, "up"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_b4

    move v2, v3

    :goto_93
    iput-boolean v2, v8, Lcom/baidu/mapsdkplatform/comapi/map/t;->j:Z

    const-string v2, "lev"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v8, Lcom/baidu/mapsdkplatform/comapi/map/t;->e:I

    iget-boolean v2, v8, Lcom/baidu/mapsdkplatform/comapi/map/t;->j:Z

    if-eqz v2, :cond_b6

    const-string v2, "mapsize"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v8, Lcom/baidu/mapsdkplatform/comapi/map/t;->k:I

    :goto_a9
    invoke-virtual {v7, v8}, Lcom/baidu/mapsdkplatform/comapi/map/u;->a(Lcom/baidu/mapsdkplatform/comapi/map/t;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_31

    :cond_b4
    move v2, v4

    goto :goto_93

    :cond_b6
    const/4 v2, 0x0

    iput v2, v8, Lcom/baidu/mapsdkplatform/comapi/map/t;->k:I
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_b9} :catch_ba

    goto :goto_a9

    :catch_ba
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    :cond_c0
    move-object v0, v1

    goto/16 :goto_7
.end method

.method public e(I)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-eqz v1, :cond_7

    if-gez p1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v1, p1, v0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->b(IZ)Z

    move-result v0

    goto :goto_7
.end method

.method public f(I)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-eqz v1, :cond_7

    if-gez p1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/16 v1, 0x7d0

    if-le p1, v1, :cond_18

    const/16 v1, 0xb60

    if-eq p1, v1, :cond_18

    const/16 v1, 0xb5f

    if-eq p1, v1, :cond_18

    const/16 v1, 0x2328

    if-ne p1, v1, :cond_7

    :cond_18
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v1, p1, v0}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(IZ)Z

    move-result v0

    goto :goto_7
.end method

.method public g(I)Lcom/baidu/mapsdkplatform/comapi/map/u;
    .registers 13

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-eqz v1, :cond_9

    if-gez p1, :cond_a

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/r;->b:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v1, p1}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->e(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string v1, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/map/u;

    invoke-direct {v1}, Lcom/baidu/mapsdkplatform/comapi/map/u;-><init>()V

    new-instance v5, Lcom/baidu/mapsdkplatform/comapi/map/t;

    invoke-direct {v5}, Lcom/baidu/mapsdkplatform/comapi/map/t;-><init>()V

    :try_start_24
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "id"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/16 v7, 0x7d0

    if-le v4, v7, :cond_45

    const/16 v7, 0xb60

    if-eq v4, v7, :cond_45

    const/16 v7, 0xb5f

    if-eq v4, v7, :cond_45

    const/16 v7, 0x2328

    if-ne v4, v7, :cond_9

    :cond_45
    iput v4, v5, Lcom/baidu/mapsdkplatform/comapi/map/t;->a:I

    const-string v4, "name"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/baidu/mapsdkplatform/comapi/map/t;->b:Ljava/lang/String;

    const-string v4, "pinyin"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/baidu/mapsdkplatform/comapi/map/t;->c:Ljava/lang/String;

    const-string v4, "headchar"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/baidu/mapsdkplatform/comapi/map/t;->d:Ljava/lang/String;

    const-string v4, "mapoldsize"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/baidu/mapsdkplatform/comapi/map/t;->h:I

    const-string v4, "ratio"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/baidu/mapsdkplatform/comapi/map/t;->i:I

    const-string v4, "status"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/baidu/mapsdkplatform/comapi/map/t;->l:I

    new-instance v4, Lcom/baidu/mapapi/model/inner/GeoPoint;

    const-string v7, "y"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    int-to-double v7, v7

    const-string v9, "x"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    int-to-double v9, v9

    invoke-direct {v4, v7, v8, v9, v10}, Lcom/baidu/mapapi/model/inner/GeoPoint;-><init>(DD)V

    iput-object v4, v5, Lcom/baidu/mapsdkplatform/comapi/map/t;->g:Lcom/baidu/mapapi/model/inner/GeoPoint;

    const-string v4, "up"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_b8

    :goto_94
    iput-boolean v2, v5, Lcom/baidu/mapsdkplatform/comapi/map/t;->j:Z

    const-string v2, "lev"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v5, Lcom/baidu/mapsdkplatform/comapi/map/t;->e:I

    iget-boolean v2, v5, Lcom/baidu/mapsdkplatform/comapi/map/t;->j:Z

    if-eqz v2, :cond_ba

    const-string v2, "mapsize"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v5, Lcom/baidu/mapsdkplatform/comapi/map/t;->k:I

    :goto_aa
    const-string v2, "ver"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v5, Lcom/baidu/mapsdkplatform/comapi/map/t;->f:I

    invoke-virtual {v1, v5}, Lcom/baidu/mapsdkplatform/comapi/map/u;->a(Lcom/baidu/mapsdkplatform/comapi/map/t;)V

    move-object v0, v1

    goto/16 :goto_9

    :cond_b8
    move v2, v3

    goto :goto_94

    :cond_ba
    const/4 v2, 0x0

    iput v2, v5, Lcom/baidu/mapsdkplatform/comapi/map/t;->k:I
    :try_end_bd
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_bd} :catch_be

    goto :goto_aa

    :catch_be
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_9
.end method
