.class public final Lcom/mapquest/android/Geocoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/mqunar/necro/agent/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x1388

.field private static final DEFAULT_LOCALE:Ljava/util/Locale;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final READ_TIMEOUT:I = 0xbb8


# instance fields
.field geocoder:Lcom/mapquest/android/Geocoder$BaseGeocoder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/mapquest/android/Geocoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/Geocoder;->LOG_TAG:Ljava/lang/String;

    .line 161
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lcom/mapquest/android/Geocoder;->DEFAULT_LOCALE:Ljava/util/Locale;

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 42
    sget-object v0, Lcom/mapquest/android/Geocoder;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-direct {p0, p1, v0}, Lcom/mapquest/android/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 51
    sget-object v0, Lcom/mapquest/android/Geocoder;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-direct {p0, p1, v0, p2}, Lcom/mapquest/android/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 4

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/Geocoder;->geocoder:Lcom/mapquest/android/Geocoder$BaseGeocoder;

    .line 38
    new-instance v0, Lcom/mapquest/android/Geocoder$NominatimGeocoder;

    invoke-direct {v0, p0, p1, p2}, Lcom/mapquest/android/Geocoder$NominatimGeocoder;-><init>(Lcom/mapquest/android/Geocoder;Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mapquest/android/Geocoder;->geocoder:Lcom/mapquest/android/Geocoder$BaseGeocoder;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/Geocoder;->geocoder:Lcom/mapquest/android/Geocoder$BaseGeocoder;

    .line 47
    new-instance v0, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mapquest/android/Geocoder$MapQuestGeocoder;-><init>(Lcom/mapquest/android/Geocoder;Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mapquest/android/Geocoder;->geocoder:Lcom/mapquest/android/Geocoder$BaseGeocoder;

    .line 48
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/mapquest/android/Geocoder;->runRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static isPresent()Z
    .registers 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method private static runRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 103
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 104
    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 105
    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 106
    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 107
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 108
    const/16 v2, 0x1388

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 109
    const/16 v2, 0xbb8

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 110
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 111
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 116
    if-eqz p1, :cond_5c

    .line 117
    :try_start_2f
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 119
    :goto_37
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 120
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 121
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    invoke-virtual {v5, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_4c} :catch_4d
    .catchall {:try_start_2f .. :try_end_4c} :catchall_af

    goto :goto_37

    .line 146
    :catch_4d
    move-exception v1

    move-object v1, v4

    .line 147
    :goto_4f
    :try_start_4f
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_af

    .line 151
    if-eqz v3, :cond_5b

    .line 152
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 157
    :cond_5b
    :goto_5b
    return-object v1

    .line 126
    :cond_5c
    :try_start_5c
    instance-of v1, v3, Lorg/apache/http/client/HttpClient;

    if-nez v1, :cond_9b

    invoke-virtual {v3, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 127
    :goto_64
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 128
    const/16 v6, 0xc8

    if-ne v2, v6, :cond_ba

    .line 129
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_73} :catch_4d
    .catchall {:try_start_5c .. :try_end_73} :catchall_af

    move-result-object v2

    .line 130
    if-eqz v2, :cond_c7

    .line 132
    :try_start_76
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gez v1, :cond_a4

    const/16 v1, 0x1000

    .line 133
    :goto_82
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 134
    invoke-interface {v2, v6}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 135
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_8d
    .catchall {:try_start_76 .. :try_end_8d} :catchall_aa

    move-result-object v1

    .line 137
    :try_start_8e
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_c5
    .catchall {:try_start_8e .. :try_end_91} :catchall_af

    .line 151
    :goto_91
    if-eqz v3, :cond_5b

    .line 152
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_5b

    .line 126
    :cond_9b
    :try_start_9b
    move-object v0, v3

    check-cast v0, Lorg/apache/http/client/HttpClient;

    move-object v1, v0

    invoke-static {v1, v5}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a2} :catch_4d
    .catchall {:try_start_9b .. :try_end_a2} :catchall_af

    move-result-object v1

    goto :goto_64

    .line 132
    :cond_a4
    :try_start_a4
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_aa

    move-result-wide v6

    long-to-int v1, v6

    goto :goto_82

    .line 137
    :catchall_aa
    move-exception v1

    :try_start_ab
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v1
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_af} :catch_4d
    .catchall {:try_start_ab .. :try_end_af} :catchall_af

    .line 151
    :catchall_af
    move-exception v1

    if-eqz v3, :cond_b9

    .line 152
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_b9
    throw v1

    .line 151
    :cond_ba
    if-eqz v3, :cond_c3

    .line 152
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_c3
    move-object v1, v4

    .line 157
    goto :goto_5b

    .line 146
    :catch_c5
    move-exception v2

    goto :goto_4f

    :cond_c7
    move-object v1, v4

    goto :goto_91
.end method


# virtual methods
.method public getFromLocation(DDI)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_47

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_47

    .line 56
    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpl-double v0, p3, v0

    if-ltz v0, :cond_2e

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_2e

    .line 57
    iget-object v0, p0, Lcom/mapquest/android/Geocoder;->geocoder:Lcom/mapquest/android/Geocoder$BaseGeocoder;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mapquest/android/Geocoder$BaseGeocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 59
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid longitude value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid latitude value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFromLocationName(Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_f

    .line 92
    iget-object v0, p0, Lcom/mapquest/android/Geocoder;->geocoder:Lcom/mapquest/android/Geocoder$BaseGeocoder;

    invoke-virtual {v0, p1, p2}, Lcom/mapquest/android/Geocoder$BaseGeocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 94
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid location name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IDDDD)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    if-eqz p1, :cond_cd

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_cd

    .line 68
    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpl-double v2, p3, v2

    if-ltz v2, :cond_b2

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpg-double v2, p3, v2

    if-gtz v2, :cond_b2

    .line 69
    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpl-double v2, p7, v2

    if-ltz v2, :cond_97

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpg-double v2, p7, v2

    if-gtz v2, :cond_97

    .line 70
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpl-double v2, p5, v2

    if-ltz v2, :cond_7c

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpg-double v2, p5, v2

    if-gtz v2, :cond_7c

    .line 71
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpl-double v2, p9, v2

    if-ltz v2, :cond_61

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpg-double v2, p9, v2

    if-gtz v2, :cond_61

    .line 72
    iget-object v2, p0, Lcom/mapquest/android/Geocoder;->geocoder:Lcom/mapquest/android/Geocoder$BaseGeocoder;

    move-object v3, p1

    move v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    invoke-virtual/range {v2 .. v12}, Lcom/mapquest/android/Geocoder$BaseGeocoder;->getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 74
    :cond_61
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid upperRightLongitude value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p9

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_7c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid lowerLeftLongitude value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_97
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid upperRightLatitude value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p7

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_b2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid lowerLeftLatitude value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_cd
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid location name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
