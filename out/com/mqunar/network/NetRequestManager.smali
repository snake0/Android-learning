.class public Lcom/mqunar/network/NetRequestManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/mqunar/necro/agent/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final BUFFER_SIZE:I = 0x1000

.field public static final CTWAP_APN_NAME_1:Ljava/lang/String; = "#777"

.field public static final CTWAP_APN_NAME_2:Ljava/lang/String; = "ctwap"

.field public static final PREFERRED_APN_URI:Landroid/net/Uri;

.field private static g:Lcom/mqunar/network/NetRequestManager;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private e:Ljava/lang/String;

.field private f:I

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 88
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mqunar/network/NetRequestManager;->PREFERRED_APN_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const v0, 0x13880

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput v0, p0, Lcom/mqunar/network/NetRequestManager;->a:I

    .line 94
    iput v0, p0, Lcom/mqunar/network/NetRequestManager;->b:I

    .line 95
    iput v0, p0, Lcom/mqunar/network/NetRequestManager;->c:I

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/network/NetRequestManager;->h:Ljava/util/Map;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/network/NetRequestManager;->i:Ljava/util/Map;

    .line 268
    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;)Lcom/mqunar/network/Headers;
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 859
    new-instance v4, Lcom/mqunar/network/Headers$Builder;

    invoke-direct {v4}, Lcom/mqunar/network/Headers$Builder;-><init>()V

    .line 860
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    .line 861
    if-eqz v5, :cond_54

    array-length v1, v5

    if-lez v1, :cond_54

    .line 863
    const/4 v1, 0x0

    .line 864
    array-length v6, v5

    move v3, v0

    move v2, v0

    :goto_13
    if-ge v3, v6, :cond_47

    aget-object v0, v5, v3

    .line 865
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    .line 866
    const-string v8, "Content-Length"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2a

    move v1, v2

    .line 864
    :goto_24
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move-object v1, v0

    goto :goto_13

    .line 869
    :cond_2a
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 870
    const-string v0, "Content-Encoding"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    const-string v0, "gzip"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 871
    const/4 v2, 0x1

    move v0, v2

    .line 873
    :goto_40
    invoke-virtual {v4, v7, v8}, Lcom/mqunar/network/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/network/Headers$Builder;

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto :goto_24

    .line 876
    :cond_47
    if-eqz v1, :cond_54

    .line 877
    if-eqz v2, :cond_59

    .line 878
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v4, v0, v1}, Lcom/mqunar/network/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/network/Headers$Builder;

    .line 884
    :cond_54
    :goto_54
    invoke-virtual {v4}, Lcom/mqunar/network/Headers$Builder;->build()Lcom/mqunar/network/Headers;

    move-result-object v0

    return-object v0

    .line 879
    :cond_59
    if-eqz v1, :cond_54

    .line 880
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/mqunar/network/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/network/Headers$Builder;

    goto :goto_54

    :cond_67
    move v0, v2

    goto :goto_40
.end method

.method static synthetic a(Lcom/mqunar/network/NetRequestManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/mqunar/network/NetRequestManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/mqunar/network/NetRequestManager;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_82

    .line 221
    iget-object v1, p0, Lcom/mqunar/network/NetRequestManager;->i:Ljava/util/Map;

    monitor-enter v1

    .line 222
    :try_start_9
    iget-object v0, p0, Lcom/mqunar/network/NetRequestManager;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 223
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 224
    iget-object v0, p0, Lcom/mqunar/network/NetRequestManager;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 225
    if-eqz v0, :cond_27

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 227
    :cond_27
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 232
    :goto_3a
    iget-object v2, p0, Lcom/mqunar/network/NetRequestManager;->i:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 234
    :cond_42
    if-eqz v0, :cond_81

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_81

    .line 235
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 236
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_81

    .line 237
    iget-object v2, p0, Lcom/mqunar/network/NetRequestManager;->h:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    monitor-exit v1

    .line 246
    :goto_67
    return-object v0

    .line 230
    :cond_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 242
    :cond_7c
    monitor-exit v1

    goto :goto_67

    .line 244
    :catchall_7e
    move-exception v0

    monitor-exit v1
    :try_end_80
    .catchall {:try_start_9 .. :try_end_80} :catchall_7e

    throw v0

    :cond_81
    :try_start_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_7e

    :cond_82
    move-object v0, p1

    .line 246
    goto :goto_67
.end method

.method private a(Ljava/lang/String;I)Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 9

    .prologue
    const v5, 0x7fffffff

    .line 444
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 445
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v0, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 448
    :try_start_18
    new-instance v0, Lcom/mqunar/network/QSSLSocketFactory;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/mqunar/network/QSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 449
    sget-object v2, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 450
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2f} :catch_7e

    .line 455
    :goto_2f
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 456
    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 457
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 458
    iget v2, p0, Lcom/mqunar/network/NetRequestManager;->a:I

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 459
    iget v2, p0, Lcom/mqunar/network/NetRequestManager;->b:I

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 462
    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5c

    .line 463
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {v2, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 464
    invoke-static {v0, v2}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 468
    :cond_5c
    invoke-static {v0, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 469
    const-string v2, "http.conn-manager.max-total"

    invoke-interface {v0, v2, v5}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 471
    new-instance v2, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 472
    invoke-static {v0, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 473
    const-string v3, "http.conn-manager.max-per-route"

    invoke-interface {v0, v3, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 475
    new-instance v2, Lcom/mqunar/network/l;

    invoke-direct {v2, p0, v0, v1}, Lcom/mqunar/network/l;-><init>(Lcom/mqunar/network/NetRequestManager;Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 476
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v1

    .line 451
    :catch_7e
    move-exception v0

    .line 452
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/mqunar/network/NetRequestManager;->b(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    .line 113
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 115
    :try_start_d
    instance-of v3, v0, Lorg/apache/http/client/HttpClient;

    if-nez v3, :cond_83

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 116
    :goto_15
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_94

    .line 117
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    const-string v0, "errcode"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 121
    if-nez v0, :cond_94

    .line 122
    const-string v0, "data"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 123
    iget-object v4, p0, Lcom/mqunar/network/NetRequestManager;->i:Ljava/util/Map;

    monitor-enter v4
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3f} :catch_90

    move v2, v1

    .line 124
    :goto_40
    :try_start_40
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_8a

    .line 125
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 133
    const-string v5, "record"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 134
    const-string v6, "name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 135
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7f

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 136
    iget-object v0, p0, Lcom/mqunar/network/NetRequestManager;->i:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 137
    if-nez v0, :cond_76

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    iget-object v7, p0, Lcom/mqunar/network/NetRequestManager;->i:Ljava/util/Map;

    invoke-interface {v7, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_76
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7f

    .line 142
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7f
    .catchall {:try_start_40 .. :try_end_7f} :catchall_8d

    .line 124
    :cond_7f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_40

    .line 115
    :cond_83
    :try_start_83
    check-cast v0, Lorg/apache/http/client/HttpClient;

    invoke-static {v0, v2}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_88} :catch_90

    move-result-object v0

    goto :goto_15

    .line 146
    :cond_8a
    :try_start_8a
    monitor-exit v4

    .line 147
    const/4 v0, 0x1

    .line 153
    :goto_8c
    return v0

    .line 146
    :catchall_8d
    move-exception v0

    monitor-exit v4
    :try_end_8f
    .catchall {:try_start_8a .. :try_end_8f} :catchall_8d

    :try_start_8f
    throw v0
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_90} :catch_90

    .line 150
    :catch_90
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_94
    move v0, v1

    .line 153
    goto :goto_8c
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 157
    const/4 v0, 0x1

    new-array v4, v0, [Z

    .line 158
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x2

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 159
    new-instance v0, Lcom/mqunar/network/e;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/mqunar/network/e;-><init>(Lcom/mqunar/network/NetRequestManager;Landroid/content/Context;Ljava/lang/String;[ZLjava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v0}, Lcom/mqunar/network/e;->start()V

    .line 177
    new-instance v0, Lcom/mqunar/network/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mqunar/network/f;-><init>(Lcom/mqunar/network/NetRequestManager;Landroid/content/Context;Ljava/lang/String;[ZLjava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v0}, Lcom/mqunar/network/f;->start()V

    .line 194
    aget-boolean v0, v4, v6

    if-nez v0, :cond_29

    .line 196
    :try_start_24
    monitor-enter v4
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_25} :catch_2f

    .line 197
    :try_start_25
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 198
    monitor-exit v4
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_2c

    .line 203
    :cond_29
    :goto_29
    aget-boolean v0, v4, v6

    return v0

    .line 198
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v0
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_2f} :catch_2f

    .line 199
    :catch_2f
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_29
.end method

.method static synthetic a(Lcom/mqunar/network/NetRequestManager;Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/mqunar/network/NetRequestManager;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/mqunar/network/NetRequestManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/mqunar/network/NetRequestManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 437
    if-nez p1, :cond_8

    .line 438
    if-nez p2, :cond_6

    const/4 v0, 0x1

    .line 440
    :goto_5
    return v0

    .line 438
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 440
    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 353
    invoke-static {p1}, Lcom/mqunar/network/NetConnChangeReceiver;->dealNetworkInfo(Landroid/content/Context;)V

    .line 358
    sget-boolean v0, Lcom/mqunar/network/NetConnChangeReceiver;->wifi:Z

    if-eqz v0, :cond_52

    .line 361
    invoke-static {v2, p1}, Lcom/mqunar/network/NetRequestManager;->getProxyHost(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-static {v2, p1}, Lcom/mqunar/network/NetRequestManager;->getProxyPort(ZLandroid/content/Context;)I

    move-result v0

    .line 373
    :goto_11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "https://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "HTTPS://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 375
    :cond_27
    invoke-static {p1}, Lcom/mqunar/network/NetRequestManager;->getApnName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 376
    const-string v3, "#777"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string v3, "ctwap"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 377
    :cond_3b
    const/4 v1, 0x0

    .line 381
    :cond_3c
    invoke-virtual {p0, v1, v0}, Lcom/mqunar/network/NetRequestManager;->getHttpClient(Ljava/lang/String;I)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    .line 383
    new-instance v1, Lcom/mqunar/network/h;

    invoke-direct {v1, p0}, Lcom/mqunar/network/h;-><init>(Lcom/mqunar/network/NetRequestManager;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 400
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v4}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    .line 401
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 403
    return-object v0

    .line 369
    :cond_52
    invoke-static {v4, p1}, Lcom/mqunar/network/NetRequestManager;->getProxyHost(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-static {v4, p1}, Lcom/mqunar/network/NetRequestManager;->getProxyPort(ZLandroid/content/Context;)I

    move-result v0

    goto :goto_11
.end method

.method static synthetic b(Lcom/mqunar/network/NetRequestManager;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/mqunar/network/NetRequestManager;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 264
    :cond_6
    :goto_6
    return-void

    .line 253
    :cond_7
    invoke-direct {p0, p1}, Lcom/mqunar/network/NetRequestManager;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 254
    iget-object v2, p0, Lcom/mqunar/network/NetRequestManager;->i:Ljava/util/Map;

    monitor-enter v2

    .line 255
    :try_start_10
    iget-object v0, p0, Lcom/mqunar/network/NetRequestManager;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 257
    iget-object v1, p0, Lcom/mqunar/network/NetRequestManager;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 258
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 259
    iget-object v4, p0, Lcom/mqunar/network/NetRequestManager;->i:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 260
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_22

    .line 262
    :catchall_3a
    move-exception v0

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_10 .. :try_end_3c} :catchall_3a

    throw v0

    :cond_3d
    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3a

    goto :goto_6
.end method

.method private c(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 413
    const-string v0, "([1-9]|[1-9]//d|1//d{2}|2[0-4]//d|25[0-5])(//.(//d|[1-9]//d|1//d{2}|2[0-4]//d|25[0-5])){3}"

    .line 414
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 415
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static getApnName(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 312
    const-string v6, ""

    .line 314
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mqunar/network/NetRequestManager;->PREFERRED_APN_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "apn"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 316
    if-eqz v1, :cond_41

    .line 317
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 318
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 319
    if-eqz v0, :cond_7a

    .line 320
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_7a

    .line 321
    const-string v0, "apn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 324
    :goto_3d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 344
    :goto_40
    return-object v0

    .line 327
    :cond_41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mqunar/network/NetRequestManager;->PREFERRED_APN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 328
    if-eqz v1, :cond_78

    .line 329
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 330
    const-string v0, "user"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_61} :catch_62

    goto :goto_40

    .line 334
    :catch_62
    move-exception v0

    .line 336
    :try_start_63
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 338
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_72} :catch_74

    move-result-object v0

    goto :goto_40

    .line 340
    :catch_74
    move-exception v0

    .line 341
    const-string v0, ""

    goto :goto_40

    :cond_78
    move-object v0, v6

    goto :goto_40

    :cond_7a
    move-object v0, v6

    goto :goto_3d
.end method

.method public static getInstance()Lcom/mqunar/network/NetRequestManager;
    .registers 2

    .prologue
    .line 298
    sget-object v0, Lcom/mqunar/network/NetRequestManager;->g:Lcom/mqunar/network/NetRequestManager;

    if-nez v0, :cond_13

    .line 299
    const-class v1, Lcom/mqunar/network/NetRequestManager;

    monitor-enter v1

    .line 300
    :try_start_7
    sget-object v0, Lcom/mqunar/network/NetRequestManager;->g:Lcom/mqunar/network/NetRequestManager;

    if-nez v0, :cond_12

    .line 301
    new-instance v0, Lcom/mqunar/network/NetRequestManager;

    invoke-direct {v0}, Lcom/mqunar/network/NetRequestManager;-><init>()V

    sput-object v0, Lcom/mqunar/network/NetRequestManager;->g:Lcom/mqunar/network/NetRequestManager;

    .line 303
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 305
    :cond_13
    sget-object v0, Lcom/mqunar/network/NetRequestManager;->g:Lcom/mqunar/network/NetRequestManager;

    return-object v0

    .line 303
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static getProxyHost(ZLandroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 283
    if-nez p0, :cond_8

    .line 285
    :try_start_2
    invoke-static {p1}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_7

    move-result-object v0

    .line 289
    :goto_6
    return-object v0

    .line 286
    :catch_7
    move-exception v0

    .line 289
    :cond_8
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static getProxyPort(ZLandroid/content/Context;)I
    .registers 3

    .prologue
    .line 272
    if-nez p0, :cond_8

    .line 274
    :try_start_2
    invoke-static {p1}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_7

    move-result v0

    .line 278
    :goto_6
    return v0

    .line 275
    :catch_7
    move-exception v0

    .line 278
    :cond_8
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    goto :goto_6
.end method

.method public static isRedirect(I)Z
    .registers 2

    .prologue
    .line 532
    packed-switch p0, :pswitch_data_8

    .line 541
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 539
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 532
    nop

    :pswitch_data_8
    .packed-switch 0x12c
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getHttpClient(Ljava/lang/String;I)Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 4

    .prologue
    .line 430
    iget-object v0, p0, Lcom/mqunar/network/NetRequestManager;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mqunar/network/NetRequestManager;->e:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/mqunar/network/NetRequestManager;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/mqunar/network/NetRequestManager;->f:I

    if-eq v0, p2, :cond_1b

    .line 431
    :cond_10
    iput-object p1, p0, Lcom/mqunar/network/NetRequestManager;->e:Ljava/lang/String;

    iput p2, p0, Lcom/mqunar/network/NetRequestManager;->f:I

    invoke-direct {p0, p1, p2}, Lcom/mqunar/network/NetRequestManager;->a(Ljava/lang/String;I)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/network/NetRequestManager;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 433
    :goto_1a
    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/mqunar/network/NetRequestManager;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    goto :goto_1a
.end method

.method public request(Lcom/mqunar/network/NetRequest;Landroid/content/Context;)Lcom/mqunar/network/NetResponse;
    .registers 16

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 553
    new-instance v8, Lcom/mqunar/network/NetResponse;

    invoke-direct {v8}, Lcom/mqunar/network/NetResponse;-><init>()V

    .line 554
    if-eqz p1, :cond_16

    iget-object v1, p1, Lcom/mqunar/network/NetRequest;->url:Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v1, p1, Lcom/mqunar/network/NetRequest;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2a

    .line 555
    :cond_16
    const/4 v1, 0x3

    iput v1, v8, Lcom/mqunar/network/NetResponse;->error:I

    .line 556
    iget-object v1, p1, Lcom/mqunar/network/NetRequest;->handler:Landroid/os/Handler$Callback;

    if-eqz v1, :cond_28

    .line 557
    iget-object v1, p1, Lcom/mqunar/network/NetRequest;->handler:Landroid/os/Handler$Callback;

    iget v2, v8, Lcom/mqunar/network/NetResponse;->id:I

    iget v3, v8, Lcom/mqunar/network/NetResponse;->error:I

    iget-object v4, v8, Lcom/mqunar/network/NetResponse;->e:Ljava/lang/Exception;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mqunar/network/NetRequestManager;->sendMessageInfo(Landroid/os/Handler$Callback;IILjava/lang/Exception;)Z

    :cond_28
    move-object v1, v8

    .line 800
    :goto_29
    return-object v1

    .line 562
    :cond_2a
    iget v1, p1, Lcom/mqunar/network/NetRequest;->id:I

    iput v1, v8, Lcom/mqunar/network/NetResponse;->id:I

    .line 563
    iget-object v1, p1, Lcom/mqunar/network/NetRequest;->url:Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lcom/mqunar/network/NetRequestManager;->b(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v7

    .line 587
    :try_start_34
    iget-object v1, p1, Lcom/mqunar/network/NetRequest;->a:[B

    if-eqz v1, :cond_93

    .line 588
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p1, Lcom/mqunar/network/NetRequest;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 589
    new-instance v6, Lcom/mqunar/network/OutputStreamWarp;

    invoke-direct {v6, p1}, Lcom/mqunar/network/OutputStreamWarp;-><init>(Lcom/mqunar/network/NetRequest;)V

    .line 590
    new-instance v2, Lcom/mqunar/network/i;

    iget-object v3, p1, Lcom/mqunar/network/NetRequest;->a:[B

    invoke-direct {v2, p0, v3, v6}, Lcom/mqunar/network/i;-><init>(Lcom/mqunar/network/NetRequestManager;[BLcom/mqunar/network/OutputStreamWarp;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v3, v1

    .line 630
    :goto_4f
    invoke-virtual {p1}, Lcom/mqunar/network/NetRequest;->hasHeader()Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 631
    iget-object v1, p1, Lcom/mqunar/network/NetRequest;->header:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 632
    :goto_5f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 633
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 634
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 635
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 636
    invoke-interface {v3, v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_7a} :catch_7b

    goto :goto_5f

    .line 659
    :catch_7b
    move-exception v1

    .line 670
    const/4 v2, 0x1

    iput v2, v8, Lcom/mqunar/network/NetResponse;->error:I

    .line 671
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object v2, v8, Lcom/mqunar/network/NetResponse;->e:Ljava/lang/Exception;

    .line 672
    iget-object v1, p1, Lcom/mqunar/network/NetRequest;->handler:Landroid/os/Handler$Callback;

    iget v2, v8, Lcom/mqunar/network/NetResponse;->id:I

    iget v3, v8, Lcom/mqunar/network/NetResponse;->error:I

    iget-object v4, v8, Lcom/mqunar/network/NetResponse;->e:Ljava/lang/Exception;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mqunar/network/NetRequestManager;->sendMessageInfo(Landroid/os/Handler$Callback;IILjava/lang/Exception;)Z

    move-object v1, v8

    .line 673
    goto :goto_29

    .line 598
    :cond_93
    :try_start_93
    iget-object v1, p1, Lcom/mqunar/network/NetRequest;->b:Ljava/io/InputStream;

    if-eqz v1, :cond_b2

    .line 599
    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p1, Lcom/mqunar/network/NetRequest;->url:Ljava/lang/String;

    invoke-direct {v12, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 600
    new-instance v6, Lcom/mqunar/network/OutputStreamWarp;

    invoke-direct {v6, p1}, Lcom/mqunar/network/OutputStreamWarp;-><init>(Lcom/mqunar/network/NetRequest;)V

    .line 601
    new-instance v1, Lcom/mqunar/network/j;

    iget-object v3, p1, Lcom/mqunar/network/NetRequest;->b:Ljava/io/InputStream;

    const-wide/16 v4, -0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/mqunar/network/j;-><init>(Lcom/mqunar/network/NetRequestManager;Ljava/io/InputStream;JLcom/mqunar/network/OutputStreamWarp;)V

    invoke-virtual {v12, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v3, v12

    .line 609
    goto :goto_4f

    :cond_b2
    iget-object v1, p1, Lcom/mqunar/network/NetRequest;->d:Ljava/util/List;

    if-eqz v1, :cond_e5

    .line 610
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p1, Lcom/mqunar/network/NetRequest;->url:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 611
    new-instance v6, Lcom/mqunar/network/OutputStreamWarp;

    invoke-direct {v6, p1}, Lcom/mqunar/network/OutputStreamWarp;-><init>(Lcom/mqunar/network/NetRequest;)V

    .line 612
    new-instance v3, Lcom/mqunar/network/k;

    sget-object v1, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {v3, p0, v1, v6}, Lcom/mqunar/network/k;-><init>(Lcom/mqunar/network/NetRequestManager;Lorg/apache/http/entity/mime/HttpMultipartMode;Lcom/mqunar/network/OutputStreamWarp;)V

    .line 619
    iget-object v1, p1, Lcom/mqunar/network/NetRequest;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_cf
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_df

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/entity/mime/FormBodyPart;

    .line 620
    invoke-virtual {v3, v1}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Lorg/apache/http/entity/mime/FormBodyPart;)V

    goto :goto_cf

    .line 623
    :cond_df
    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v3, v2

    .line 625
    goto/16 :goto_4f

    .line 626
    :cond_e5
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p1, Lcom/mqunar/network/NetRequest;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    move-object v6, v9

    .line 627
    goto/16 :goto_4f

    .line 640
    :cond_f0
    iput-object v3, p1, Lcom/mqunar/network/NetRequest;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 643
    iget-object v1, p1, Lcom/mqunar/network/NetRequest;->url:Ljava/lang/String;

    invoke-static {p2, v1, v3}, Lcom/mqunar/network/NetCookieUtils;->a(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 645
    invoke-virtual {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/client/CookieStore;->clear()V

    .line 646
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS Z z"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 647
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 648
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 649
    const-string v2, "L-Date"

    invoke-interface {v3, v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    instance-of v1, v7, Lorg/apache/http/client/HttpClient;

    if-nez v1, :cond_1d5

    invoke-virtual {v7, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 653
    :goto_11f
    iget-object v2, p1, Lcom/mqunar/network/NetRequest;->url:Ljava/lang/String;

    invoke-static {p2, v2, v1}, Lcom/mqunar/network/NetCookieUtils;->a(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpResponse;)V

    .line 655
    if-eqz v6, :cond_129

    .line 656
    invoke-virtual {v6}, Lcom/mqunar/network/OutputStreamWarp;->checkNotify()V
    :try_end_129
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_129} :catch_7b

    .line 682
    :cond_129
    if-eqz v1, :cond_1d2

    .line 683
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    iput v2, v8, Lcom/mqunar/network/NetResponse;->code:I

    .line 684
    iget v2, v8, Lcom/mqunar/network/NetResponse;->code:I

    invoke-static {v2}, Lcom/mqunar/network/NetRequestManager;->isRedirect(I)Z

    move-result v2

    iput-boolean v2, v8, Lcom/mqunar/network/NetResponse;->redirect:Z

    .line 685
    invoke-direct {p0, v1}, Lcom/mqunar/network/NetRequestManager;->a(Lorg/apache/http/HttpResponse;)Lcom/mqunar/network/Headers;

    move-result-object v2

    iput-object v2, v8, Lcom/mqunar/network/NetResponse;->headers:Lcom/mqunar/network/Headers;

    .line 697
    :try_start_143
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_146} :catch_242
    .catchall {:try_start_143 .. :try_end_146} :catchall_23f

    move-result-object v2

    .line 699
    :try_start_147
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 702
    const-wide/16 v3, 0x0

    .line 704
    iget-object v1, p1, Lcom/mqunar/network/NetRequest;->handler:Landroid/os/Handler$Callback;

    if-nez v1, :cond_175

    .line 706
    iget-object v1, v8, Lcom/mqunar/network/NetResponse;->headers:Lcom/mqunar/network/Headers;

    if-eqz v1, :cond_245

    .line 707
    iget-object v1, v8, Lcom/mqunar/network/NetResponse;->headers:Lcom/mqunar/network/Headers;

    const-string v6, "Content-Length"

    invoke-virtual {v1, v6}, Lcom/mqunar/network/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 708
    if-eqz v1, :cond_1df

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1df

    .line 709
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 714
    :goto_169
    if-lez v1, :cond_1f2

    const v6, 0x64000

    if-ge v1, v6, :cond_1f2

    .line 715
    new-instance v9, Lcom/mqunar/network/a;

    invoke-direct {v9, v1}, Lcom/mqunar/network/a;-><init>(I)V

    .line 723
    :cond_175
    :goto_175
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 726
    :goto_179
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 727
    if-ne v6, v10, :cond_217

    .line 728
    iput-wide v3, v8, Lcom/mqunar/network/NetResponse;->total:J

    .line 729
    iget-object v7, p1, Lcom/mqunar/network/NetRequest;->handler:Landroid/os/Handler$Callback;

    if-eqz v7, :cond_18e

    .line 730
    iput-object v1, v8, Lcom/mqunar/network/NetResponse;->result:[B

    .line 731
    iput v6, v8, Lcom/mqunar/network/NetResponse;->resultLen:I

    .line 732
    iget-object v1, p1, Lcom/mqunar/network/NetRequest;->handler:Landroid/os/Handler$Callback;

    invoke-virtual {p0, v1, v8}, Lcom/mqunar/network/NetRequestManager;->sendMessageRead(Landroid/os/Handler$Callback;Lcom/mqunar/network/NetResponse;)V

    .line 748
    :cond_18e
    iget-object v1, p1, Lcom/mqunar/network/NetRequest;->handler:Landroid/os/Handler$Callback;

    if-nez v1, :cond_1a0

    .line 749
    invoke-virtual {v9}, Lcom/mqunar/network/a;->b()[B

    move-result-object v1

    iput-object v1, v8, Lcom/mqunar/network/NetResponse;->result:[B

    .line 750
    iget-object v1, v8, Lcom/mqunar/network/NetResponse;->result:[B

    array-length v1, v1

    iput v1, v8, Lcom/mqunar/network/NetResponse;->resultLen:I

    .line 751
    invoke-virtual {v9}, Lcom/mqunar/network/a;->close()V

    .line 755
    :cond_1a0
    iget-object v1, v8, Lcom/mqunar/network/NetResponse;->headers:Lcom/mqunar/network/Headers;

    if-eqz v1, :cond_1ca

    .line 756
    iget-object v1, v8, Lcom/mqunar/network/NetResponse;->headers:Lcom/mqunar/network/Headers;

    const-string v6, "Content-Encoding"

    invoke-virtual {v1, v6}, Lcom/mqunar/network/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 757
    const-string v6, "gzip"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ca

    .line 759
    iget-object v1, v8, Lcom/mqunar/network/NetResponse;->headers:Lcom/mqunar/network/Headers;

    invoke-virtual {v1}, Lcom/mqunar/network/Headers;->newBuilder()Lcom/mqunar/network/Headers$Builder;

    move-result-object v1

    const-string v6, "Content-Length"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lcom/mqunar/network/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/network/Headers$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/network/Headers$Builder;->build()Lcom/mqunar/network/Headers;

    move-result-object v1

    iput-object v1, v8, Lcom/mqunar/network/NetResponse;->headers:Lcom/mqunar/network/Headers;

    .line 762
    :cond_1ca
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1cd
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_1cd} :catch_1fb
    .catchall {:try_start_147 .. :try_end_1cd} :catchall_223

    .line 784
    if-eqz v2, :cond_1d2

    .line 787
    :try_start_1cf
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1d2
    .catch Ljava/io/IOException; {:try_start_1cf .. :try_end_1d2} :catch_235

    :cond_1d2
    :goto_1d2
    move-object v1, v8

    .line 800
    goto/16 :goto_29

    .line 650
    :cond_1d5
    :try_start_1d5
    move-object v0, v7

    check-cast v0, Lorg/apache/http/client/HttpClient;

    move-object v1, v0

    invoke-static {v1, v3}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1dc
    .catch Ljava/lang/Throwable; {:try_start_1d5 .. :try_end_1dc} :catch_7b

    move-result-object v1

    goto/16 :goto_11f

    .line 710
    :cond_1df
    :try_start_1df
    const-string v1, "chunked"

    iget-object v6, v8, Lcom/mqunar/network/NetResponse;->headers:Lcom/mqunar/network/Headers;

    const-string v7, "Transfer-Encoding"

    invoke-virtual {v6, v7}, Lcom/mqunar/network/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_245

    move v1, v10

    .line 711
    goto/16 :goto_169

    .line 717
    :cond_1f2
    new-instance v9, Lcom/mqunar/network/a;

    const/16 v1, 0x1000

    invoke-direct {v9, v1}, Lcom/mqunar/network/a;-><init>(I)V
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_1f9} :catch_1fb
    .catchall {:try_start_1df .. :try_end_1f9} :catchall_223

    goto/16 :goto_175

    .line 771
    :catch_1fb
    move-exception v1

    .line 780
    :goto_1fc
    const/4 v3, 0x2

    :try_start_1fd
    iput v3, v8, Lcom/mqunar/network/NetResponse;->error:I

    .line 781
    iput-object v1, v8, Lcom/mqunar/network/NetResponse;->e:Ljava/lang/Exception;

    .line 782
    iget-object v1, p1, Lcom/mqunar/network/NetRequest;->handler:Landroid/os/Handler$Callback;

    iget v3, v8, Lcom/mqunar/network/NetResponse;->id:I

    iget v4, v8, Lcom/mqunar/network/NetResponse;->error:I

    iget-object v5, v8, Lcom/mqunar/network/NetResponse;->e:Ljava/lang/Exception;

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/mqunar/network/NetRequestManager;->sendMessageInfo(Landroid/os/Handler$Callback;IILjava/lang/Exception;)Z
    :try_end_20c
    .catchall {:try_start_1fd .. :try_end_20c} :catchall_223

    .line 784
    if-eqz v2, :cond_1d2

    .line 787
    :try_start_20e
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_211
    .catch Ljava/io/IOException; {:try_start_20e .. :try_end_211} :catch_212

    goto :goto_1d2

    .line 788
    :catch_212
    move-exception v1

    .line 789
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d2

    .line 737
    :cond_217
    int-to-long v11, v6

    add-long/2addr v3, v11

    .line 739
    :try_start_219
    iget-object v7, p1, Lcom/mqunar/network/NetRequest;->handler:Landroid/os/Handler$Callback;

    if-nez v7, :cond_22a

    .line 740
    const/4 v7, 0x0

    invoke-virtual {v9, v1, v7, v6}, Lcom/mqunar/network/a;->write([BII)V
    :try_end_221
    .catch Ljava/lang/Exception; {:try_start_219 .. :try_end_221} :catch_1fb
    .catchall {:try_start_219 .. :try_end_221} :catchall_223

    goto/16 :goto_179

    .line 784
    :catchall_223
    move-exception v1

    :goto_224
    if-eqz v2, :cond_229

    .line 787
    :try_start_226
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_229
    .catch Ljava/io/IOException; {:try_start_226 .. :try_end_229} :catch_23a

    .line 790
    :cond_229
    :goto_229
    throw v1

    .line 742
    :cond_22a
    :try_start_22a
    iput-object v1, v8, Lcom/mqunar/network/NetResponse;->result:[B

    .line 743
    iput v6, v8, Lcom/mqunar/network/NetResponse;->resultLen:I

    .line 744
    iget-object v6, p1, Lcom/mqunar/network/NetRequest;->handler:Landroid/os/Handler$Callback;

    invoke-virtual {p0, v6, v8}, Lcom/mqunar/network/NetRequestManager;->sendMessageRead(Landroid/os/Handler$Callback;Lcom/mqunar/network/NetResponse;)V
    :try_end_233
    .catch Ljava/lang/Exception; {:try_start_22a .. :try_end_233} :catch_1fb
    .catchall {:try_start_22a .. :try_end_233} :catchall_223

    goto/16 :goto_179

    .line 788
    :catch_235
    move-exception v1

    .line 789
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d2

    .line 788
    :catch_23a
    move-exception v2

    .line 789
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_229

    .line 784
    :catchall_23f
    move-exception v1

    move-object v2, v9

    goto :goto_224

    .line 771
    :catch_242
    move-exception v1

    move-object v2, v9

    goto :goto_1fc

    :cond_245
    move v1, v11

    goto/16 :goto_169
.end method

.method public requestIpList(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 207
    new-instance v0, Lcom/mqunar/network/g;

    invoke-direct {v0, p0, p1}, Lcom/mqunar/network/g;-><init>(Lcom/mqunar/network/NetRequestManager;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/mqunar/network/g;->start()V

    .line 217
    return-void
.end method

.method public sendMessageInfo(Landroid/os/Handler$Callback;IILjava/lang/Exception;)Z
    .registers 12

    .prologue
    .line 926
    if-nez p1, :cond_4

    .line 927
    const/4 v0, 0x0

    .line 933
    :goto_3
    return v0

    .line 929
    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 930
    const/4 v0, 0x3

    iput v0, v6, Landroid/os/Message;->what:I

    .line 931
    new-instance v0, Lcom/mqunar/network/NetMsgObj;

    const-wide/16 v2, 0x0

    move v1, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mqunar/network/NetMsgObj;-><init>(IJILjava/lang/Object;)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 932
    invoke-interface {p1, v6}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 933
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public sendMessageRead(Landroid/os/Handler$Callback;Lcom/mqunar/network/NetResponse;)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 888
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 890
    iget v1, p2, Lcom/mqunar/network/NetResponse;->resultLen:I

    if-lez v1, :cond_43

    .line 891
    iget v1, p2, Lcom/mqunar/network/NetResponse;->resultLen:I

    new-array v5, v1, [B

    .line 892
    iget-object v1, p2, Lcom/mqunar/network/NetResponse;->result:[B

    iget v2, p2, Lcom/mqunar/network/NetResponse;->resultLen:I

    invoke-static {v1, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 897
    :goto_15
    const/4 v1, 0x1

    iput v1, v6, Landroid/os/Message;->what:I

    .line 899
    iget-object v1, p2, Lcom/mqunar/network/NetResponse;->headers:Lcom/mqunar/network/Headers;

    if-eqz v1, :cond_24

    .line 900
    iget-object v0, p2, Lcom/mqunar/network/NetResponse;->headers:Lcom/mqunar/network/Headers;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lcom/mqunar/network/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 903
    :cond_24
    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ltz v1, :cond_45

    .line 904
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/mqunar/network/NetResponse;->total:J

    .line 909
    :cond_32
    :goto_32
    new-instance v0, Lcom/mqunar/network/NetMsgObj;

    iget v1, p2, Lcom/mqunar/network/NetResponse;->id:I

    iget-wide v2, p2, Lcom/mqunar/network/NetResponse;->total:J

    iget v4, p2, Lcom/mqunar/network/NetResponse;->resultLen:I

    invoke-direct/range {v0 .. v5}, Lcom/mqunar/network/NetMsgObj;-><init>(IJILjava/lang/Object;)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 910
    invoke-interface {p1, v6}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 911
    return-void

    :cond_43
    move-object v5, v0

    .line 894
    goto :goto_15

    .line 905
    :cond_45
    iget-object v0, p2, Lcom/mqunar/network/NetResponse;->headers:Lcom/mqunar/network/Headers;

    if-eqz v0, :cond_32

    iget-object v0, p2, Lcom/mqunar/network/NetResponse;->headers:Lcom/mqunar/network/Headers;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/mqunar/network/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget v0, p2, Lcom/mqunar/network/NetResponse;->resultLen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_32

    .line 906
    const-wide/16 v0, -0x1

    iput-wide v0, p2, Lcom/mqunar/network/NetResponse;->total:J

    goto :goto_32
.end method

.method public sendMessageWrite(Landroid/os/Handler$Callback;Lcom/mqunar/network/NetRequest;)Z
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 914
    iget-object v0, p2, Lcom/mqunar/network/NetRequest;->handler:Landroid/os/Handler$Callback;

    if-nez v0, :cond_6

    .line 921
    :goto_5
    return v4

    .line 917
    :cond_6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 918
    const/4 v0, 0x2

    iput v0, v6, Landroid/os/Message;->what:I

    .line 919
    new-instance v0, Lcom/mqunar/network/NetMsgObj;

    iget v1, p2, Lcom/mqunar/network/NetRequest;->id:I

    iget-wide v2, p2, Lcom/mqunar/network/NetRequest;->total:J

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/mqunar/network/NetMsgObj;-><init>(IJILjava/lang/Object;)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 920
    invoke-interface {p1, v6}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 921
    const/4 v4, 0x1

    goto :goto_5
.end method

.method public setTimeout(III)V
    .registers 4

    .prologue
    .line 407
    iput p1, p0, Lcom/mqunar/network/NetRequestManager;->a:I

    .line 408
    iput p3, p0, Lcom/mqunar/network/NetRequestManager;->c:I

    .line 409
    iput p2, p0, Lcom/mqunar/network/NetRequestManager;->b:I

    .line 410
    return-void
.end method

.method public setupProxy(Landroid/content/Context;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 3

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mqunar/network/NetRequestManager;->b(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    return-object v0
.end method
