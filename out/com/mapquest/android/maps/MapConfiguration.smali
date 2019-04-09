.class public Lcom/mapquest/android/maps/MapConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TILE_VERSION_FILENAME:Ljava/lang/String; = "mqTileVersion.json"

.field private static final TILE_VERSION_SERVICE_URL:Ljava/lang/String; = "http://mapconfig.mapquest.com/mapconfig?version=3&format=json"

.field static versionUpdated:Z


# instance fields
.field private configStr:Ljava/lang/String;

.field private mapConfigList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mapquest/android/maps/MapConfiguration$MapConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mapView:Lcom/mapquest/android/maps/MapView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/mapquest/android/maps/MapConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/MapConfiguration;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLcom/mapquest/android/maps/MapView;)V
    .registers 4

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/MapConfiguration;->configStr:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/mapquest/android/maps/MapConfiguration;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 34
    invoke-direct {p0}, Lcom/mapquest/android/maps/MapConfiguration;->getConfigurationFromDisk()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/MapConfiguration;->configStr:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/mapquest/android/maps/MapConfiguration;->configStr:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 36
    invoke-direct {p0}, Lcom/mapquest/android/maps/MapConfiguration;->getDefaultConfiguration()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/MapConfiguration;->configStr:Ljava/lang/String;

    .line 42
    :cond_18
    iget-object v0, p0, Lcom/mapquest/android/maps/MapConfiguration;->configStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/MapConfiguration;->parseConfiguration(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/MapConfiguration;->mapConfigList:Ljava/util/Map;

    .line 43
    if-eqz p1, :cond_25

    .line 44
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapConfiguration;->updateMapConfigFromServer()V

    .line 47
    :cond_25
    return-void
.end method

.method static synthetic access$000(Lcom/mapquest/android/maps/MapConfiguration;)Ljava/io/File;
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/mapquest/android/maps/MapConfiguration;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/mapquest/android/maps/MapConfiguration;)Lcom/mapquest/android/maps/MapView;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mapquest/android/maps/MapConfiguration;->mapView:Lcom/mapquest/android/maps/MapView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mapquest/android/maps/MapConfiguration;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/mapquest/android/maps/MapConfiguration;->getConfigurationFromDisk()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mapquest/android/maps/MapConfiguration;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mapquest/android/maps/MapConfiguration;->configStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mapquest/android/maps/MapConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/mapquest/android/maps/MapConfiguration;->configStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/mapquest/android/maps/MapConfiguration;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/mapquest/android/maps/MapConfiguration;->mapConfigList:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mapquest/android/maps/MapConfiguration;Ljava/lang/String;)Ljava/util/Map;
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/MapConfiguration;->parseConfiguration(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private createKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getConfigurationFromDisk()Ljava/lang/String;
    .registers 4

    .prologue
    .line 94
    .line 95
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/mapquest/android/maps/MapConfiguration;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    const-string v2, "mqTileVersion.json"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    .line 97
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 99
    :try_start_12
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 100
    invoke-static {v2}, Lcom/mapquest/android/maps/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_1c

    move-result-object v0

    .line 106
    :cond_1b
    :goto_1b
    return-object v0

    .line 101
    :catch_1c
    move-exception v1

    goto :goto_1b
.end method

.method private getDefaultConfiguration()Ljava/lang/String;
    .registers 5

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "/com/mapquest/android/maps/defaultMapConfig.json"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 115
    :try_start_b
    invoke-static {v1}, Lcom/mapquest/android/maps/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\t"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1e} :catch_20

    move-result-object v0

    .line 120
    :goto_1f
    return-object v0

    .line 116
    :catch_20
    move-exception v1

    goto :goto_1f
.end method

.method private getRootDirectory()Ljava/io/File;
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mapquest/android/maps/MapConfiguration;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mapquest"

    invoke-static {v0, v1}, Lcom/mapquest/android/maps/Util;->getAppFileDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 90
    return-object v0
.end method

.method private parseConfiguration(Ljava/lang/String;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mapquest/android/maps/MapConfiguration$MapConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 124
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 125
    if-eqz p1, :cond_a0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a0

    .line 127
    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 128
    const-string v2, "mapconfig"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 129
    const-string v2, "services"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "layers"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "layer"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v2, v1

    .line 131
    :goto_2c
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_a0

    .line 132
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 133
    new-instance v5, Lcom/mapquest/android/maps/MapConfiguration$MapConfig;

    invoke-direct {v5, p0}, Lcom/mapquest/android/maps/MapConfiguration$MapConfig;-><init>(Lcom/mapquest/android/maps/MapConfiguration;)V

    .line 134
    const-string v6, "urlpattern"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/mapquest/android/maps/MapConfiguration$MapConfig;->urlPattern:Ljava/lang/String;

    .line 135
    const-string v6, "name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 136
    iput-object v6, v5, Lcom/mapquest/android/maps/MapConfiguration$MapConfig;->type:Ljava/lang/String;

    .line 137
    const-string v7, "coverage"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 138
    const-string v8, "coverage"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/mapquest/android/maps/MapConfiguration$MapConfig;->coverage:Ljava/lang/String;

    .line 139
    const-string v8, "hostrange"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 140
    const-string v9, "hi"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/mapquest/android/maps/MapConfiguration$MapConfig;->hostRangeHigh:Ljava/lang/String;

    .line 141
    const-string v9, "lo"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/mapquest/android/maps/MapConfiguration$MapConfig;->hostRangeLow:Ljava/lang/String;

    .line 142
    const-string v8, "formats"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v8, "ext"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    move v0, v1

    .line 144
    :goto_7e
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v0, v9, :cond_94

    .line 145
    iget-object v9, v5, Lcom/mapquest/android/maps/MapConfiguration$MapConfig;->formats:Ljava/util/List;

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    .line 148
    :cond_94
    invoke-direct {p0, v7, v6}, Lcom/mapquest/android/maps/MapConfiguration;->createKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_9b} :catch_9f

    .line 131
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2c

    .line 152
    :catch_9f
    move-exception v0

    .line 157
    :cond_a0
    return-object v3
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lcom/mapquest/android/maps/MapConfiguration;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 201
    iput-object v0, p0, Lcom/mapquest/android/maps/MapConfiguration;->mapConfigList:Ljava/util/Map;

    .line 202
    iput-object v0, p0, Lcom/mapquest/android/maps/MapConfiguration;->configStr:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public equals(Lcom/mapquest/android/maps/MapConfiguration;)Z
    .registers 6

    .prologue
    .line 167
    invoke-virtual {p1}, Lcom/mapquest/android/maps/MapConfiguration;->getMapConfigsList()Ljava/util/Map;

    move-result-object v2

    .line 169
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 172
    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    .line 173
    const/4 v0, 0x1

    .line 180
    :goto_13
    return v0

    .line 176
    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    iget-object v1, p0, Lcom/mapquest/android/maps/MapConfiguration;->mapConfigList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapquest/android/maps/MapConfiguration$MapConfig;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/MapConfiguration$MapConfig;

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/MapConfiguration$MapConfig;->equals(Lcom/mapquest/android/maps/MapConfiguration$MapConfig;)Z

    move-result v0

    .line 178
    if-nez v0, :cond_c

    goto :goto_13
.end method

.method public getMapConfigByType(Ljava/lang/String;)Lcom/mapquest/android/maps/MapConfiguration$MapConfig;
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mapquest/android/maps/MapConfiguration;->mapConfigList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mapquest/android/maps/MapConfiguration;->mapConfigList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/MapConfiguration$MapConfig;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getMapConfigsList()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mapquest/android/maps/MapConfiguration$MapConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mapquest/android/maps/MapConfiguration;->mapConfigList:Ljava/util/Map;

    return-object v0
.end method

.method public getUrlPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/mapquest/android/maps/MapConfiguration;->createKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/mapquest/android/maps/MapConfiguration;->mapConfigList:Ljava/util/Map;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/mapquest/android/maps/MapConfiguration;->mapConfigList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 61
    iget-object v0, p0, Lcom/mapquest/android/maps/MapConfiguration;->mapConfigList:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/MapConfiguration$MapConfig;

    .line 62
    iget-object v1, v0, Lcom/mapquest/android/maps/MapConfiguration$MapConfig;->urlPattern:Ljava/lang/String;

    .line 63
    const-string v2, "{$hostrange}"

    iget-object v0, v0, Lcom/mapquest/android/maps/MapConfiguration$MapConfig;->hostRangeLow:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_23
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    iget-object v0, p0, Lcom/mapquest/android/maps/MapConfiguration;->mapConfigList:Ljava/util/Map;

    if-eqz v0, :cond_37

    .line 186
    iget-object v0, p0, Lcom/mapquest/android/maps/MapConfiguration;->mapConfigList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 188
    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 189
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    iget-object v3, p0, Lcom/mapquest/android/maps/MapConfiguration;->mapConfigList:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 191
    iget-object v3, p0, Lcom/mapquest/android/maps/MapConfiguration;->mapConfigList:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/MapConfiguration$MapConfig;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapConfiguration$MapConfig;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 196
    :cond_37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateMapConfigFromServer()V
    .registers 2

    .prologue
    .line 72
    sget-boolean v0, Lcom/mapquest/android/maps/MapConfiguration;->versionUpdated:Z

    if-nez v0, :cond_f

    .line 73
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mapquest/android/maps/MapConfiguration;->versionUpdated:Z

    .line 74
    new-instance v0, Lcom/mapquest/android/maps/MapConfiguration$TileVersionUpdater;

    invoke-direct {v0, p0}, Lcom/mapquest/android/maps/MapConfiguration$TileVersionUpdater;-><init>(Lcom/mapquest/android/maps/MapConfiguration;)V

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapConfiguration$TileVersionUpdater;->start()V

    .line 77
    :cond_f
    return-void
.end method
