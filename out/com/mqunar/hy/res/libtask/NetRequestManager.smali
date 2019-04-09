.class Lcom/mqunar/hy/res/libtask/NetRequestManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/mqunar/necro/agent/instrumentation/Instrumented;
.end annotation


# static fields
.field static final BUFFER_SIZE:I = 0x1000

.field private static final CTWAP_APN_NAME_1:Ljava/lang/String; = "#777"

.field private static final CTWAP_APN_NAME_2:Ljava/lang/String; = "ctwap"

.field private static final PREFERRED_APN_URI:Landroid/net/Uri;

.field private static final PRINTLOG:Z

.field private static instance:Lcom/mqunar/hy/res/libtask/NetRequestManager;


# instance fields
.field private cacheClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private cacheHost:Ljava/lang/String;

.field private cachePort:I

.field private connTimeout:I

.field private currentDnsMap:Ljava/util/Map;
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

.field private dnsMap:Ljava/util/Map;
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

.field private readTimeout:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->PREFERRED_APN_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const v0, 0x13880

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v0, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->connTimeout:I

    .line 85
    iput v0, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->readTimeout:I

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->currentDnsMap:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->dnsMap:Ljava/util/Map;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/mqunar/hy/res/libtask/NetRequestManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->nameToIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/mqunar/hy/res/libtask/NetRequestManager;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->onSocketError(Ljava/lang/String;)V

    return-void
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 672
    if-eqz p0, :cond_d

    array-length v0, p0

    if-gtz v0, :cond_f

    .line 673
    :cond_d
    const/4 v0, 0x0

    .line 683
    :goto_e
    return-object v0

    :cond_f
    move v0, v1

    .line 675
    :goto_10
    array-length v3, p0

    if-ge v0, v3, :cond_2b

    .line 676
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    .line 677
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 678
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_25

    .line 679
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 681
    :cond_25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 683
    :cond_2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method private equalsString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 303
    if-nez p1, :cond_8

    .line 304
    if-nez p2, :cond_6

    const/4 v0, 0x1

    .line 306
    :goto_5
    return v0

    .line 304
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 306
    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method private static getApnName(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 189
    const-string v6, ""

    .line 191
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mqunar/hy/res/libtask/NetRequestManager;->PREFERRED_APN_URI:Landroid/net/Uri;

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

    .line 193
    if-eqz v1, :cond_41

    .line 194
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 195
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 196
    if-eqz v0, :cond_7a

    .line 197
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_7a

    .line 198
    const-string v0, "apn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 201
    :goto_3d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 221
    :goto_40
    return-object v0

    .line 204
    :cond_41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mqunar/hy/res/libtask/NetRequestManager;->PREFERRED_APN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 205
    if-eqz v1, :cond_78

    .line 206
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 207
    const-string v0, "user"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_61} :catch_62

    goto :goto_40

    .line 211
    :catch_62
    move-exception v0

    .line 213
    :try_start_63
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 215
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_72} :catch_74

    move-result-object v0

    goto :goto_40

    .line 217
    :catch_74
    move-exception v0

    .line 218
    const-string v0, ""

    goto :goto_40

    :cond_78
    move-object v0, v6

    goto :goto_40

    :cond_7a
    move-object v0, v6

    goto :goto_3d
.end method

.method private getCacheHttpClient(Ljava/lang/String;I)Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 9

    .prologue
    const v5, 0x7fffffff

    .line 310
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 311
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v0, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 314
    :try_start_18
    new-instance v0, Lcom/mqunar/hy/res/libtask/QSSLSocketFactory;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/mqunar/hy/res/libtask/QSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 315
    sget-object v2, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 316
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2f} :catch_7e

    .line 321
    :goto_2f
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 322
    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 323
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 324
    iget v2, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->connTimeout:I

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 325
    iget v2, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->readTimeout:I

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 328
    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5c

    .line 329
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {v2, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 330
    invoke-static {v0, v2}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 334
    :cond_5c
    invoke-static {v0, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 335
    const-string v2, "http.conn-manager.max-total"

    invoke-interface {v0, v2, v5}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 337
    new-instance v2, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 338
    invoke-static {v0, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 339
    const-string v3, "http.conn-manager.max-per-route"

    invoke-interface {v0, v3, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 341
    new-instance v2, Lcom/mqunar/hy/res/libtask/NetRequestManager$QThreadSafeClientConnManager;

    invoke-direct {v2, p0, v0, v1}, Lcom/mqunar/hy/res/libtask/NetRequestManager$QThreadSafeClientConnManager;-><init>(Lcom/mqunar/hy/res/libtask/NetRequestManager;Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 342
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v1

    .line 317
    :catch_7e
    move-exception v0

    .line 318
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2f
.end method

.method public static getInstance()Lcom/mqunar/hy/res/libtask/NetRequestManager;
    .registers 2

    .prologue
    .line 175
    sget-object v0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->instance:Lcom/mqunar/hy/res/libtask/NetRequestManager;

    if-nez v0, :cond_13

    .line 176
    const-class v1, Lcom/mqunar/hy/res/libtask/NetRequestManager;

    monitor-enter v1

    .line 177
    :try_start_7
    sget-object v0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->instance:Lcom/mqunar/hy/res/libtask/NetRequestManager;

    if-nez v0, :cond_12

    .line 178
    new-instance v0, Lcom/mqunar/hy/res/libtask/NetRequestManager;

    invoke-direct {v0}, Lcom/mqunar/hy/res/libtask/NetRequestManager;-><init>()V

    sput-object v0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->instance:Lcom/mqunar/hy/res/libtask/NetRequestManager;

    .line 180
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 182
    :cond_13
    sget-object v0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->instance:Lcom/mqunar/hy/res/libtask/NetRequestManager;

    return-object v0

    .line 180
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private static getProxyHost(ZLandroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 160
    if-nez p0, :cond_8

    .line 162
    :try_start_2
    invoke-static {p1}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_7

    move-result-object v0

    .line 166
    :goto_6
    return-object v0

    .line 163
    :catch_7
    move-exception v0

    .line 166
    :cond_8
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private static getProxyPort(ZLandroid/content/Context;)I
    .registers 3

    .prologue
    .line 149
    if-nez p0, :cond_8

    .line 151
    :try_start_2
    invoke-static {p1}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_7

    move-result v0

    .line 155
    :goto_6
    return v0

    .line 152
    :catch_7
    move-exception v0

    .line 155
    :cond_8
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    goto :goto_6
.end method

.method private static isRedirect(I)Z
    .registers 2

    .prologue
    .line 398
    packed-switch p0, :pswitch_data_8

    .line 407
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 405
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 398
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

.method private isboolIp(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 279
    const-string v0, "([1-9]|[1-9]//d|1//d{2}|2[0-4]//d|25[0-5])(//.(//d|[1-9]//d|1//d{2}|2[0-4]//d|25[0-5])){3}"

    .line 280
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 281
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private mergeHeaders(Lorg/apache/http/HttpResponse;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 687
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 688
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    .line 689
    if-eqz v5, :cond_54

    array-length v1, v5

    if-lez v1, :cond_54

    .line 691
    const/4 v1, 0x0

    .line 692
    array-length v6, v5

    move v3, v0

    move v2, v0

    :goto_13
    if-ge v3, v6, :cond_47

    aget-object v0, v5, v3

    .line 693
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    .line 694
    const-string v8, "Content-Length"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2a

    move v1, v2

    .line 692
    :goto_24
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move-object v1, v0

    goto :goto_13

    .line 697
    :cond_2a
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 698
    const-string v0, "Content-Encoding"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    const-string v0, "gzip"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 699
    const/4 v2, 0x1

    move v0, v2

    .line 701
    :goto_40
    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto :goto_24

    .line 704
    :cond_47
    if-eqz v1, :cond_54

    .line 705
    if-eqz v2, :cond_55

    .line 706
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    :cond_54
    :goto_54
    return-object v4

    .line 708
    :cond_55
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    :cond_61
    move v0, v2

    goto :goto_40
.end method

.method private nameToIp(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->isboolIp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_82

    .line 98
    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->dnsMap:Ljava/util/Map;

    monitor-enter v1

    .line 99
    :try_start_9
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->currentDnsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 101
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->dnsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 102
    if-eqz v0, :cond_27

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 104
    :cond_27
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_3a
    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->dnsMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 111
    :cond_42
    if-eqz v0, :cond_81

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_81

    .line 112
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

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_81

    .line 114
    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->currentDnsMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    monitor-exit v1

    .line 123
    :goto_67
    return-object v0

    .line 107
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

    .line 119
    :cond_7c
    monitor-exit v1

    goto :goto_67

    .line 121
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

    .line 123
    goto :goto_67
.end method

.method private onSocketError(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 141
    :cond_6
    :goto_6
    return-void

    .line 130
    :cond_7
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->isboolIp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 131
    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->dnsMap:Ljava/util/Map;

    monitor-enter v2

    .line 132
    :try_start_10
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->currentDnsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->dnsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 135
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    iget-object v4, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->dnsMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 137
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_22

    .line 139
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

.method private static saveToFile(JLjava/lang/String;)V
    .registers 10

    .prologue
    .line 632
    const-string v3, "22"

    monitor-enter v3

    .line 633
    const/4 v0, 0x0

    .line 636
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 637
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 642
    :goto_14
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 643
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 646
    :cond_1d
    new-instance v4, Ljava/io/File;

    const-string v2, "qunar_log.txt"

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 649
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_a4

    .line 650
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 653
    :goto_5d
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_63} :catch_85
    .catchall {:try_start_4 .. :try_end_63} :catchall_8e

    .line 654
    :try_start_63
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 655
    const-string v0, "\n\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 656
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_76} :catch_a1
    .catchall {:try_start_63 .. :try_end_76} :catchall_9f

    .line 660
    if-eqz v1, :cond_7b

    .line 662
    :try_start_78
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_9b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_98

    .line 667
    :cond_7b
    :goto_7b
    :try_start_7b
    monitor-exit v3
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_98

    .line 668
    return-void

    .line 639
    :cond_7d
    :try_start_7d
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.Qunar/files"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_84} :catch_85
    .catchall {:try_start_7d .. :try_end_84} :catchall_8e

    goto :goto_14

    .line 658
    :catch_85
    move-exception v1

    .line 660
    :goto_86
    if-eqz v0, :cond_7b

    .line 662
    :try_start_88
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c
    .catchall {:try_start_88 .. :try_end_8b} :catchall_98

    goto :goto_7b

    .line 663
    :catch_8c
    move-exception v0

    goto :goto_7b

    .line 660
    :catchall_8e
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_92
    if-eqz v1, :cond_97

    .line 662
    :try_start_94
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_9d
    .catchall {:try_start_94 .. :try_end_97} :catchall_98

    .line 664
    :cond_97
    :goto_97
    :try_start_97
    throw v0

    .line 667
    :catchall_98
    move-exception v0

    monitor-exit v3
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_98

    throw v0

    .line 663
    :catch_9b
    move-exception v0

    goto :goto_7b

    :catch_9d
    move-exception v1

    goto :goto_97

    .line 660
    :catchall_9f
    move-exception v0

    goto :goto_92

    .line 658
    :catch_a1
    move-exception v0

    move-object v0, v1

    goto :goto_86

    :cond_a4
    move-object v2, v1

    goto :goto_5d
.end method

.method private sendMessageInfo(Landroid/os/Handler$Callback;IILjava/lang/Exception;)Z
    .registers 12

    .prologue
    .line 754
    if-nez p1, :cond_4

    .line 755
    const/4 v0, 0x0

    .line 761
    :goto_3
    return v0

    .line 757
    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 758
    const/4 v0, 0x3

    iput v0, v6, Landroid/os/Message;->what:I

    .line 759
    new-instance v0, Lcom/mqunar/hy/res/libtask/NetMsgObj;

    const-wide/16 v2, 0x0

    move v1, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mqunar/hy/res/libtask/NetMsgObj;-><init>(IJILjava/lang/Object;)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 760
    invoke-interface {p1, v6}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 761
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private sendMessageRead(Landroid/os/Handler$Callback;Lcom/mqunar/hy/res/libtask/NetResponse;)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 716
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 718
    iget v1, p2, Lcom/mqunar/hy/res/libtask/NetResponse;->resultLen:I

    if-lez v1, :cond_45

    .line 719
    iget v1, p2, Lcom/mqunar/hy/res/libtask/NetResponse;->resultLen:I

    new-array v5, v1, [B

    .line 720
    iget-object v1, p2, Lcom/mqunar/hy/res/libtask/NetResponse;->result:[B

    iget v2, p2, Lcom/mqunar/hy/res/libtask/NetResponse;->resultLen:I

    invoke-static {v1, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 725
    :goto_15
    const/4 v1, 0x1

    iput v1, v6, Landroid/os/Message;->what:I

    .line 727
    iget-object v1, p2, Lcom/mqunar/hy/res/libtask/NetResponse;->headers:Ljava/util/Map;

    if-eqz v1, :cond_26

    .line 728
    iget-object v0, p2, Lcom/mqunar/hy/res/libtask/NetResponse;->headers:Ljava/util/Map;

    const-string v1, "Content-Length"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 731
    :cond_26
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ltz v1, :cond_47

    .line 732
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/mqunar/hy/res/libtask/NetResponse;->total:J

    .line 737
    :cond_34
    :goto_34
    new-instance v0, Lcom/mqunar/hy/res/libtask/NetMsgObj;

    iget v1, p2, Lcom/mqunar/hy/res/libtask/NetResponse;->id:I

    iget-wide v2, p2, Lcom/mqunar/hy/res/libtask/NetResponse;->total:J

    iget v4, p2, Lcom/mqunar/hy/res/libtask/NetResponse;->resultLen:I

    invoke-direct/range {v0 .. v5}, Lcom/mqunar/hy/res/libtask/NetMsgObj;-><init>(IJILjava/lang/Object;)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 738
    invoke-interface {p1, v6}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 739
    return-void

    :cond_45
    move-object v5, v0

    .line 722
    goto :goto_15

    .line 733
    :cond_47
    iget-object v0, p2, Lcom/mqunar/hy/res/libtask/NetResponse;->headers:Ljava/util/Map;

    if-eqz v0, :cond_34

    iget-object v0, p2, Lcom/mqunar/hy/res/libtask/NetResponse;->headers:Ljava/util/Map;

    const-string v1, "Transfer-Encoding"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "chunked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget v0, p2, Lcom/mqunar/hy/res/libtask/NetResponse;->resultLen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_34

    .line 734
    const-wide/16 v0, -0x1

    iput-wide v0, p2, Lcom/mqunar/hy/res/libtask/NetResponse;->total:J

    goto :goto_34
.end method

.method private setupProxy(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 230
    invoke-static {p1}, Lcom/mqunar/hy/res/libtask/NetConnChangeReceiver;->dealNetworkInfo(Landroid/content/Context;)V

    .line 235
    sget-boolean v0, Lcom/mqunar/hy/res/libtask/NetConnChangeReceiver;->wifi:Z

    if-eqz v0, :cond_52

    .line 238
    invoke-static {v2, p1}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->getProxyHost(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-static {v2, p1}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->getProxyPort(ZLandroid/content/Context;)I

    move-result v0

    .line 250
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

    .line 252
    :cond_27
    invoke-static {p1}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->getApnName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 253
    const-string v3, "#777"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string v3, "ctwap"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 254
    :cond_3b
    const/4 v1, 0x0

    .line 258
    :cond_3c
    invoke-virtual {p0, v1, v0}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->getHttpClient(Ljava/lang/String;I)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    .line 259
    new-instance v1, Lcom/mqunar/hy/res/libtask/NetRequestManager$1;

    invoke-direct {v1, p0}, Lcom/mqunar/hy/res/libtask/NetRequestManager$1;-><init>(Lcom/mqunar/hy/res/libtask/NetRequestManager;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 274
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v4}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 275
    return-object v0

    .line 246
    :cond_52
    invoke-static {v4, p1}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->getProxyHost(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {v4, p1}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->getProxyPort(ZLandroid/content/Context;)I

    move-result v0

    goto :goto_11
.end method


# virtual methods
.method public getHttpClient(Ljava/lang/String;I)Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 4

    .prologue
    .line 296
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->cacheClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->cacheHost:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->cachePort:I

    if-eq v0, p2, :cond_1b

    .line 297
    :cond_10
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->cacheHost:Ljava/lang/String;

    iput p2, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->cachePort:I

    invoke-direct {p0, p1, p2}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->getCacheHttpClient(Ljava/lang/String;I)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->cacheClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 299
    :goto_1a
    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager;->cacheClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    goto :goto_1a
.end method

.method request(Lcom/mqunar/hy/res/libtask/NetRequest;Landroid/content/Context;)Lcom/mqunar/hy/res/libtask/NetResponse;
    .registers 16

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 419
    new-instance v8, Lcom/mqunar/hy/res/libtask/NetResponse;

    invoke-direct {v8}, Lcom/mqunar/hy/res/libtask/NetResponse;-><init>()V

    .line 420
    if-eqz p1, :cond_16

    iget-object v1, p1, Lcom/mqunar/hy/res/libtask/NetRequest;->url:Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v1, p1, Lcom/mqunar/hy/res/libtask/NetRequest;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2a

    .line 421
    :cond_16
    const/4 v1, 0x3

    iput v1, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->error:I

    .line 422
    iget-object v1, p1, Lcom/mqunar/hy/res/libtask/NetRequest;->handler:Landroid/os/Handler$Callback;

    if-eqz v1, :cond_28

    .line 423
    iget-object v1, p1, Lcom/mqunar/hy/res/libtask/NetRequest;->handler:Landroid/os/Handler$Callback;

    iget v2, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->id:I

    iget v3, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->error:I

    iget-object v4, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->e:Ljava/lang/Exception;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->sendMessageInfo(Landroid/os/Handler$Callback;IILjava/lang/Exception;)Z

    :cond_28
    move-object v1, v8

    .line 628
    :goto_29
    return-object v1

    .line 428
    :cond_2a
    iget v1, p1, Lcom/mqunar/hy/res/libtask/NetRequest;->id:I

    iput v1, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->id:I

    .line 429
    iget-object v1, p1, Lcom/mqunar/hy/res/libtask/NetRequest;->url:Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->setupProxy(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v7

    .line 453
    :try_start_34
    iget-object v1, p1, Lcom/mqunar/hy/res/libtask/NetRequest;->content:[B

    if-eqz v1, :cond_93

    .line 454
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p1, Lcom/mqunar/hy/res/libtask/NetRequest;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 455
    new-instance v6, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;

    invoke-direct {v6, p1}, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;-><init>(Lcom/mqunar/hy/res/libtask/NetRequest;)V

    .line 456
    new-instance v2, Lcom/mqunar/hy/res/libtask/NetRequestManager$2;

    iget-object v3, p1, Lcom/mqunar/hy/res/libtask/NetRequest;->content:[B

    invoke-direct {v2, p0, v3, v6}, Lcom/mqunar/hy/res/libtask/NetRequestManager$2;-><init>(Lcom/mqunar/hy/res/libtask/NetRequestManager;[BLcom/mqunar/hy/res/libtask/OutputStreamWarp;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v3, v1

    .line 480
    :goto_4f
    invoke-virtual {p1}, Lcom/mqunar/hy/res/libtask/NetRequest;->hasHeader()Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 481
    iget-object v1, p1, Lcom/mqunar/hy/res/libtask/NetRequest;->header:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 482
    :goto_5f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 483
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 484
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 485
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 486
    invoke-interface {v3, v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_7a} :catch_7b

    goto :goto_5f

    .line 497
    :catch_7b
    move-exception v1

    .line 508
    const/4 v2, 0x1

    iput v2, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->error:I

    .line 509
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object v2, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->e:Ljava/lang/Exception;

    .line 510
    iget-object v1, p1, Lcom/mqunar/hy/res/libtask/NetRequest;->handler:Landroid/os/Handler$Callback;

    iget v2, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->id:I

    iget v3, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->error:I

    iget-object v4, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->e:Ljava/lang/Exception;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->sendMessageInfo(Landroid/os/Handler$Callback;IILjava/lang/Exception;)Z

    move-object v1, v8

    .line 511
    goto :goto_29

    .line 464
    :cond_93
    :try_start_93
    iget-object v1, p1, Lcom/mqunar/hy/res/libtask/NetRequest;->stream:Ljava/io/InputStream;

    if-eqz v1, :cond_b2

    .line 465
    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p1, Lcom/mqunar/hy/res/libtask/NetRequest;->url:Ljava/lang/String;

    invoke-direct {v12, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 466
    new-instance v6, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;

    invoke-direct {v6, p1}, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;-><init>(Lcom/mqunar/hy/res/libtask/NetRequest;)V

    .line 467
    new-instance v1, Lcom/mqunar/hy/res/libtask/NetRequestManager$3;

    iget-object v3, p1, Lcom/mqunar/hy/res/libtask/NetRequest;->stream:Ljava/io/InputStream;

    const-wide/16 v4, -0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/mqunar/hy/res/libtask/NetRequestManager$3;-><init>(Lcom/mqunar/hy/res/libtask/NetRequestManager;Ljava/io/InputStream;JLcom/mqunar/hy/res/libtask/OutputStreamWarp;)V

    invoke-virtual {v12, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v3, v12

    .line 475
    goto :goto_4f

    .line 476
    :cond_b2
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p1, Lcom/mqunar/hy/res/libtask/NetRequest;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    move-object v6, v9

    .line 477
    goto :goto_4f

    .line 490
    :cond_bc
    iput-object v3, p1, Lcom/mqunar/hy/res/libtask/NetRequest;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 491
    invoke-virtual {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/client/CookieStore;->clear()V

    .line 492
    instance-of v1, v7, Lorg/apache/http/client/HttpClient;

    if-nez v1, :cond_17b

    invoke-virtual {v7, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 493
    :goto_cd
    if-eqz v6, :cond_d2

    .line 494
    invoke-virtual {v6}, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;->checkNotify()V
    :try_end_d2
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_d2} :catch_7b

    .line 520
    :cond_d2
    if-eqz v1, :cond_178

    .line 521
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    iput v2, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->code:I

    .line 522
    iget v2, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->code:I

    invoke-static {v2}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->isRedirect(I)Z

    move-result v2

    iput-boolean v2, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->redirect:Z

    .line 523
    invoke-direct {p0, v1}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->mergeHeaders(Lorg/apache/http/HttpResponse;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->headers:Ljava/util/Map;

    .line 535
    :try_start_ec
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 538
    const-wide/16 v2, 0x0

    .line 540
    iget-object v1, p1, Lcom/mqunar/hy/res/libtask/NetRequest;->handler:Landroid/os/Handler$Callback;

    if-nez v1, :cond_1d2

    .line 542
    iget-object v1, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->headers:Ljava/util/Map;

    if-eqz v1, :cond_1cf

    .line 543
    iget-object v1, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->headers:Ljava/util/Map;

    const-string v4, "Content-Length"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 544
    if-eqz v1, :cond_185

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_185

    .line 545
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v4, v1

    .line 550
    :goto_115
    if-lez v4, :cond_19a

    const v1, 0x64000

    if-ge v4, v1, :cond_19a

    .line 551
    new-instance v1, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;

    invoke-direct {v1, v4}, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;-><init>(I)V

    move-object v4, v1

    .line 559
    :goto_122
    const/16 v1, 0x1000

    new-array v6, v1, [B

    .line 562
    :goto_126
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 563
    if-ne v7, v10, :cond_1a3

    .line 564
    iput-wide v2, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->total:J

    .line 565
    iget-object v1, p1, Lcom/mqunar/hy/res/libtask/NetRequest;->handler:Landroid/os/Handler$Callback;

    if-eqz v1, :cond_13b

    .line 566
    iput-object v6, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->result:[B

    .line 567
    iput v7, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->resultLen:I

    .line 568
    iget-object v1, p1, Lcom/mqunar/hy/res/libtask/NetRequest;->handler:Landroid/os/Handler$Callback;

    invoke-direct {p0, v1, v8}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->sendMessageRead(Landroid/os/Handler$Callback;Lcom/mqunar/hy/res/libtask/NetResponse;)V

    .line 584
    :cond_13b
    iget-object v1, p1, Lcom/mqunar/hy/res/libtask/NetRequest;->handler:Landroid/os/Handler$Callback;

    if-nez v1, :cond_14d

    .line 585
    invoke-virtual {v4}, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->rawByteArray()[B

    move-result-object v1

    iput-object v1, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->result:[B

    .line 586
    iget-object v1, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->result:[B

    array-length v1, v1

    iput v1, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->resultLen:I

    .line 587
    invoke-virtual {v4}, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->close()V

    .line 591
    :cond_14d
    iget-object v1, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->headers:Ljava/util/Map;

    if-eqz v1, :cond_175

    .line 592
    iget-object v1, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->headers:Ljava/util/Map;

    const-string v4, "Content-Encoding"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 593
    const-string v4, "gzip"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_175

    .line 595
    iget-object v1, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->headers:Ljava/util/Map;

    const-string v4, "Content-Length"

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    iget-object v1, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->headers:Ljava/util/Map;

    const-string v4, "Content-Length"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    :cond_175
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_178} :catch_1bd

    :cond_178
    :goto_178
    move-object v1, v8

    .line 628
    goto/16 :goto_29

    .line 492
    :cond_17b
    :try_start_17b
    move-object v0, v7

    check-cast v0, Lorg/apache/http/client/HttpClient;

    move-object v1, v0

    invoke-static {v1, v3}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_182
    .catch Ljava/lang/Throwable; {:try_start_17b .. :try_end_182} :catch_7b

    move-result-object v1

    goto/16 :goto_cd

    .line 546
    :cond_185
    :try_start_185
    const-string v4, "chunked"

    iget-object v1, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->headers:Ljava/util/Map;

    const-string v6, "Transfer-Encoding"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1cf

    move v4, v10

    .line 547
    goto/16 :goto_115

    .line 553
    :cond_19a
    new-instance v1, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;

    const/16 v4, 0x1000

    invoke-direct {v1, v4}, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;-><init>(I)V

    move-object v4, v1

    goto :goto_122

    .line 573
    :cond_1a3
    int-to-long v11, v7

    add-long v1, v2, v11

    .line 575
    iget-object v3, p1, Lcom/mqunar/hy/res/libtask/NetRequest;->handler:Landroid/os/Handler$Callback;

    if-nez v3, :cond_1b1

    .line 576
    const/4 v3, 0x0

    invoke-virtual {v4, v6, v3, v7}, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->write([BII)V

    move-wide v2, v1

    goto/16 :goto_126

    .line 578
    :cond_1b1
    iput-object v6, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->result:[B

    .line 579
    iput v7, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->resultLen:I

    .line 580
    iget-object v3, p1, Lcom/mqunar/hy/res/libtask/NetRequest;->handler:Landroid/os/Handler$Callback;

    invoke-direct {p0, v3, v8}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->sendMessageRead(Landroid/os/Handler$Callback;Lcom/mqunar/hy/res/libtask/NetResponse;)V
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_1ba} :catch_1bd

    move-wide v2, v1

    goto/16 :goto_126

    .line 608
    :catch_1bd
    move-exception v1

    .line 617
    const/4 v2, 0x2

    iput v2, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->error:I

    .line 618
    iput-object v1, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->e:Ljava/lang/Exception;

    .line 619
    iget-object v1, p1, Lcom/mqunar/hy/res/libtask/NetRequest;->handler:Landroid/os/Handler$Callback;

    iget v2, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->id:I

    iget v3, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->error:I

    iget-object v4, v8, Lcom/mqunar/hy/res/libtask/NetResponse;->e:Ljava/lang/Exception;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->sendMessageInfo(Landroid/os/Handler$Callback;IILjava/lang/Exception;)Z

    goto :goto_178

    :cond_1cf
    move v4, v11

    goto/16 :goto_115

    :cond_1d2
    move-object v4, v9

    goto/16 :goto_122
.end method

.method sendMessageWrite(Landroid/os/Handler$Callback;Lcom/mqunar/hy/res/libtask/NetRequest;)Z
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 742
    iget-object v0, p2, Lcom/mqunar/hy/res/libtask/NetRequest;->handler:Landroid/os/Handler$Callback;

    if-nez v0, :cond_6

    .line 749
    :goto_5
    return v4

    .line 745
    :cond_6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 746
    const/4 v0, 0x2

    iput v0, v6, Landroid/os/Message;->what:I

    .line 747
    new-instance v0, Lcom/mqunar/hy/res/libtask/NetMsgObj;

    iget v1, p2, Lcom/mqunar/hy/res/libtask/NetRequest;->id:I

    iget-wide v2, p2, Lcom/mqunar/hy/res/libtask/NetRequest;->total:J

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/mqunar/hy/res/libtask/NetMsgObj;-><init>(IJILjava/lang/Object;)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 748
    invoke-interface {p1, v6}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 749
    const/4 v4, 0x1

    goto :goto_5
.end method

.method public setupProxy(Landroid/content/Context;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 3

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->setupProxy(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    return-object v0
.end method
