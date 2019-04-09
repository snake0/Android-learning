.class public Lqunar/lego/utils/Pitcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/mqunar/necro/agent/instrumentation/Instrumented;
.end annotation


# static fields
.field private static DEFAULT_PROXY_URL:Ljava/lang/String;

.field private static IS_URL_LOCK:Z

.field private static final PREFERRED_APN_URI:Landroid/net/Uri;


# instance fields
.field private conn:Ljava/net/HttpURLConnection;

.field private final content:[B

.field private final context:Landroid/content/Context;

.field private proxyUrl:Ljava/lang/String;

.field private final reqHeader:Lqunar/lego/utils/HttpHeader;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lqunar/lego/utils/Pitcher;->PREFERRED_APN_URI:Landroid/net/Uri;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lqunar/lego/utils/Pitcher;->IS_URL_LOCK:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lqunar/lego/utils/HttpHeader;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lqunar/lego/utils/FormPart;",
            ">;",
            "Lqunar/lego/utils/HttpHeader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lqunar/lego/utils/Pitcher;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lqunar/lego/utils/Pitcher;->url:Ljava/lang/String;

    .line 43
    invoke-static {p2, p3, p4}, Lqunar/lego/utils/Pitcher;->getProtocol(Ljava/lang/String;Ljava/util/List;Lqunar/lego/utils/HttpHeader;)Landroid/util/Pair;

    move-result-object v1

    .line 44
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    iput-object v0, p0, Lqunar/lego/utils/Pitcher;->content:[B

    .line 45
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lqunar/lego/utils/HttpHeader;

    iput-object v0, p0, Lqunar/lego/utils/Pitcher;->reqHeader:Lqunar/lego/utils/HttpHeader;

    .line 46
    sget-object v0, Lqunar/lego/utils/Pitcher;->DEFAULT_PROXY_URL:Ljava/lang/String;

    iput-object v0, p0, Lqunar/lego/utils/Pitcher;->proxyUrl:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[BLqunar/lego/utils/HttpHeader;)V
    .registers 7

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lqunar/lego/utils/Pitcher;->context:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lqunar/lego/utils/Pitcher;->url:Ljava/lang/String;

    .line 52
    invoke-static {p2, p3, p4}, Lqunar/lego/utils/Pitcher;->getProtocol(Ljava/lang/String;[BLqunar/lego/utils/HttpHeader;)Landroid/util/Pair;

    move-result-object v1

    .line 53
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    iput-object v0, p0, Lqunar/lego/utils/Pitcher;->content:[B

    .line 54
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lqunar/lego/utils/HttpHeader;

    iput-object v0, p0, Lqunar/lego/utils/Pitcher;->reqHeader:Lqunar/lego/utils/HttpHeader;

    .line 55
    sget-object v0, Lqunar/lego/utils/Pitcher;->DEFAULT_PROXY_URL:Ljava/lang/String;

    iput-object v0, p0, Lqunar/lego/utils/Pitcher;->proxyUrl:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private static buildRequest([B)[B
    .registers 2

    .prologue
    .line 351
    if-nez p0, :cond_5

    const/4 v0, 0x0

    new-array p0, v0, [B

    :cond_5
    invoke-static {p0}, Lqunar/lego/utils/Goblin;->sand([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static buildResult([B)[B
    .registers 2

    .prologue
    .line 355
    invoke-static {p0}, Lqunar/lego/utils/Pitcher;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_9
    return-object v0

    :cond_a
    invoke-static {p0}, Lqunar/lego/utils/Goblin;->drift([B)[B

    move-result-object v0

    goto :goto_9
.end method

.method private static getLDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 197
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS Z z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 198
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 200
    :try_start_b
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_15

    move-result-object v0

    .line 204
    :goto_14
    return-object v0

    .line 201
    :catch_15
    move-exception v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    const-string v0, ""

    goto :goto_14
.end method

.method private static getProtocol(Ljava/lang/String;Ljava/util/List;Lqunar/lego/utils/HttpHeader;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lqunar/lego/utils/FormPart;",
            ">;",
            "Lqunar/lego/utils/HttpHeader;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lqunar/lego/utils/HttpHeader;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v1, Lqunar/lego/utils/MultipartEntity;

    invoke-direct {v1, p1}, Lqunar/lego/utils/MultipartEntity;-><init>(Ljava/util/List;)V

    .line 170
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 172
    :try_start_a
    invoke-virtual {v1, v2}, Lqunar/lego/utils/MultipartEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 173
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_41
    .catchall {:try_start_a .. :try_end_10} :catchall_4b

    move-result-object v0

    .line 178
    :try_start_11
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_50

    .line 182
    :goto_14
    invoke-virtual {v1}, Lqunar/lego/utils/MultipartEntity;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 183
    new-instance v2, Lqunar/lego/utils/HttpHeader;

    invoke-direct {v2}, Lqunar/lego/utils/HttpHeader;-><init>()V

    .line 184
    if-eqz v1, :cond_24

    .line 185
    const-string v3, "Content-Type"

    invoke-virtual {v2, v3, v1}, Lqunar/lego/utils/HttpHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_24
    invoke-static {v0}, Lqunar/lego/utils/Pitcher;->buildRequest([B)[B

    move-result-object v0

    .line 188
    const-string v1, "Pitcher-Url"

    invoke-virtual {v2, v1, p0}, Lqunar/lego/utils/HttpHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    if-eqz p2, :cond_32

    .line 190
    invoke-virtual {v2, p2}, Lqunar/lego/utils/HttpHeader;->addHeaders(Lqunar/lego/utils/HttpHeader;)V

    .line 192
    :cond_32
    const-string v1, "L-Date"

    invoke-static {}, Lqunar/lego/utils/Pitcher;->getLDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lqunar/lego/utils/HttpHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 174
    :catch_41
    move-exception v0

    .line 175
    const/4 v0, 0x0

    :try_start_43
    new-array v0, v0, [B
    :try_end_45
    .catchall {:try_start_43 .. :try_end_45} :catchall_4b

    .line 178
    :try_start_45
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_14

    .line 179
    :catch_49
    move-exception v2

    goto :goto_14

    .line 177
    :catchall_4b
    move-exception v0

    .line 178
    :try_start_4c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_52

    .line 180
    :goto_4f
    throw v0

    .line 179
    :catch_50
    move-exception v2

    goto :goto_14

    :catch_52
    move-exception v1

    goto :goto_4f
.end method

.method private static getProtocol(Ljava/lang/String;[BLqunar/lego/utils/HttpHeader;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lqunar/lego/utils/HttpHeader;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lqunar/lego/utils/HttpHeader;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 150
    if-nez p1, :cond_5

    const/4 v0, 0x0

    new-array p1, v0, [B

    .line 151
    :cond_5
    new-instance v0, Lqunar/lego/utils/HttpHeader;

    invoke-direct {v0}, Lqunar/lego/utils/HttpHeader;-><init>()V

    .line 152
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lqunar/lego/utils/HttpHeader;->hasHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 153
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Lqunar/lego/utils/HttpHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_19
    invoke-static {p1}, Lqunar/lego/utils/Pitcher;->buildRequest([B)[B

    move-result-object v1

    .line 156
    const-string v2, "Pitcher-Url"

    invoke-virtual {v0, v2, p0}, Lqunar/lego/utils/HttpHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    if-eqz p2, :cond_27

    .line 158
    invoke-virtual {v0, p2}, Lqunar/lego/utils/HttpHeader;->addHeaders(Lqunar/lego/utils/HttpHeader;)V

    .line 160
    :cond_27
    const-string v2, "L-Date"

    invoke-static {}, Lqunar/lego/utils/Pitcher;->getLDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lqunar/lego/utils/HttpHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static getProxyHost(ZLandroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 330
    if-nez p0, :cond_8

    .line 332
    :try_start_2
    invoke-static {p1}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_7

    move-result-object v0

    .line 337
    :goto_6
    return-object v0

    .line 333
    :catch_7
    move-exception v0

    .line 337
    :cond_8
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private static getProxyPort(ZLandroid/content/Context;)I
    .registers 3

    .prologue
    .line 319
    if-nez p0, :cond_8

    .line 321
    :try_start_2
    invoke-static {p1}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_7

    move-result v0

    .line 326
    :goto_6
    return v0

    .line 322
    :catch_7
    move-exception v0

    .line 326
    :cond_8
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    goto :goto_6
.end method

.method private static isEmpty(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 215
    if-nez p0, :cond_5

    .line 251
    :cond_4
    :goto_4
    return v0

    .line 219
    :cond_5
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_10

    .line 221
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    goto :goto_4

    .line 222
    :cond_10
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_1b

    .line 224
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    goto :goto_4

    .line 225
    :cond_1b
    instance-of v2, p0, Ljava/lang/CharSequence;

    if-eqz v2, :cond_29

    .line 227
    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 228
    :cond_29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 231
    instance-of v2, p0, [Ljava/lang/Object;

    if-eqz v2, :cond_40

    .line 232
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    array-length v2, p0

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 233
    :cond_40
    instance-of v2, p0, [I

    if-eqz v2, :cond_4d

    .line 234
    check-cast p0, [I

    check-cast p0, [I

    array-length v2, p0

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 235
    :cond_4d
    instance-of v2, p0, [J

    if-eqz v2, :cond_5a

    .line 236
    check-cast p0, [J

    check-cast p0, [J

    array-length v2, p0

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 237
    :cond_5a
    instance-of v2, p0, [S

    if-eqz v2, :cond_67

    .line 238
    check-cast p0, [S

    check-cast p0, [S

    array-length v2, p0

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 239
    :cond_67
    instance-of v2, p0, [D

    if-eqz v2, :cond_74

    .line 240
    check-cast p0, [D

    check-cast p0, [D

    array-length v2, p0

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 241
    :cond_74
    instance-of v2, p0, [F

    if-eqz v2, :cond_81

    .line 242
    check-cast p0, [F

    check-cast p0, [F

    array-length v2, p0

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 243
    :cond_81
    instance-of v2, p0, [Z

    if-eqz v2, :cond_8f

    .line 244
    check-cast p0, [Z

    check-cast p0, [Z

    array-length v2, p0

    if-eqz v2, :cond_4

    move v0, v1

    goto/16 :goto_4

    .line 245
    :cond_8f
    instance-of v2, p0, [C

    if-eqz v2, :cond_9d

    .line 246
    check-cast p0, [C

    check-cast p0, [C

    array-length v2, p0

    if-eqz v2, :cond_4

    move v0, v1

    goto/16 :goto_4

    .line 247
    :cond_9d
    instance-of v2, p0, [B

    if-eqz v2, :cond_ab

    .line 248
    check-cast p0, [B

    check-cast p0, [B

    array-length v2, p0

    if-eqz v2, :cond_4

    move v0, v1

    goto/16 :goto_4

    :cond_ab
    move v0, v1

    .line 251
    goto/16 :goto_4
.end method

.method public static lockUrl()V
    .registers 1

    .prologue
    .line 347
    const/4 v0, 0x1

    sput-boolean v0, Lqunar/lego/utils/Pitcher;->IS_URL_LOCK:Z

    .line 348
    return-void
.end method

.method public static setDefaultProxyUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 341
    sget-boolean v0, Lqunar/lego/utils/Pitcher;->IS_URL_LOCK:Z

    if-nez v0, :cond_6

    .line 342
    sput-object p0, Lqunar/lego/utils/Pitcher;->DEFAULT_PROXY_URL:Ljava/lang/String;

    .line 344
    :cond_6
    return-void
.end method

.method private static setupProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;
    .registers 12

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 256
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 260
    :try_start_b
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_88

    move-result-object v0

    .line 265
    :goto_f
    if-eqz v0, :cond_8b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_8b

    move v0, v2

    .line 268
    :goto_18
    if-eqz v0, :cond_8d

    .line 269
    invoke-static {v3, p0}, Lqunar/lego/utils/Pitcher;->getProxyHost(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-static {v3, p0}, Lqunar/lego/utils/Pitcher;->getProxyPort(ZLandroid/content/Context;)I

    move-result v0

    move v6, v0

    move-object v7, v1

    .line 276
    :goto_24
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 277
    const-string v8, ""

    .line 280
    :try_start_32
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lqunar/lego/utils/Pitcher;->PREFERRED_APN_URI:Landroid/net/Uri;

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

    .line 281
    if-eqz v1, :cond_98

    .line 282
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 283
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 284
    if-eqz v0, :cond_de

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_de

    .line 285
    const-string v0, "apn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .line 288
    :goto_6d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_70} :catch_b9

    .line 307
    :goto_70
    const-string v1, "#777"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_80

    const-string v1, "ctwap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    :cond_80
    move-object v7, v9

    .line 311
    :cond_81
    if-eqz v7, :cond_86

    const/4 v0, -0x1

    if-ne v6, v0, :cond_cf

    :cond_86
    move-object v0, v9

    .line 314
    :goto_87
    return-object v0

    .line 261
    :catch_88
    move-exception v0

    move-object v0, v9

    goto :goto_f

    :cond_8b
    move v0, v3

    .line 265
    goto :goto_18

    .line 272
    :cond_8d
    invoke-static {v2, p0}, Lqunar/lego/utils/Pitcher;->getProxyHost(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-static {v2, p0}, Lqunar/lego/utils/Pitcher;->getProxyPort(ZLandroid/content/Context;)I

    move-result v0

    move v6, v0

    move-object v7, v1

    goto :goto_24

    .line 290
    :cond_98
    :try_start_98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lqunar/lego/utils/Pitcher;->PREFERRED_APN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 291
    if-eqz v1, :cond_dc

    .line 292
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 293
    const-string v0, "user"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_b8} :catch_b9

    goto :goto_70

    .line 297
    :catch_b9
    move-exception v0

    .line 299
    :try_start_ba
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 300
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c9} :catch_cb

    move-result-object v0

    goto :goto_70

    .line 302
    :catch_cb
    move-exception v0

    .line 303
    const-string v0, ""

    goto :goto_70

    .line 314
    :cond_cf
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v7, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    goto :goto_87

    :cond_dc
    move-object v0, v8

    goto :goto_70

    :cond_de
    move-object v0, v8

    goto :goto_6d
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lqunar/lego/utils/Pitcher;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_9

    .line 138
    iget-object v0, p0, Lqunar/lego/utils/Pitcher;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 140
    :cond_9
    return-void
.end method

.method public getContent()[B
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lqunar/lego/utils/Pitcher;->content:[B

    return-object v0
.end method

.method public getProxyUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lqunar/lego/utils/Pitcher;->proxyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReqHeader()Lqunar/lego/utils/HttpHeader;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lqunar/lego/utils/Pitcher;->reqHeader:Lqunar/lego/utils/HttpHeader;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lqunar/lego/utils/Pitcher;->url:Ljava/lang/String;

    return-object v0
.end method

.method public request()Lqunar/lego/utils/PitcherResponse;
    .registers 7

    .prologue
    .line 76
    new-instance v2, Lqunar/lego/utils/PitcherResponse;

    invoke-direct {v2}, Lqunar/lego/utils/PitcherResponse;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lqunar/lego/utils/Pitcher;->conn:Ljava/net/HttpURLConnection;

    .line 79
    :try_start_8
    iget-object v0, p0, Lqunar/lego/utils/Pitcher;->context:Landroid/content/Context;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lqunar/lego/utils/Pitcher;->url:Ljava/lang/String;

    invoke-static {v0}, Lqunar/lego/utils/Pitcher;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 80
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context or url illegal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1c} :catch_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_41

    .line 126
    :catch_1c
    move-exception v0

    .line 127
    :try_start_1d
    iput-object v0, v2, Lqunar/lego/utils/PitcherResponse;->e:Ljava/lang/Exception;
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_41

    .line 129
    iget-object v0, p0, Lqunar/lego/utils/Pitcher;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_28

    .line 130
    iget-object v0, p0, Lqunar/lego/utils/Pitcher;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 133
    :cond_28
    :goto_28
    return-object v2

    .line 82
    :cond_29
    :try_start_29
    iget-object v0, p0, Lqunar/lego/utils/Pitcher;->context:Landroid/content/Context;

    iget-object v1, p0, Lqunar/lego/utils/Pitcher;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lqunar/lego/utils/Pitcher;->setupProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lqunar/lego/utils/Pitcher;->proxyUrl:Ljava/lang/String;

    invoke-static {v1}, Lqunar/lego/utils/Pitcher;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 84
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "pitcher url must not be empty"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_41} :catch_1c
    .catchall {:try_start_29 .. :try_end_41} :catchall_41

    .line 129
    :catchall_41
    move-exception v0

    iget-object v1, p0, Lqunar/lego/utils/Pitcher;->conn:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_4b

    .line 130
    iget-object v1, p0, Lqunar/lego/utils/Pitcher;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4b
    throw v0

    .line 87
    :cond_4c
    if-eqz v0, :cond_a2

    .line 88
    :try_start_4e
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lqunar/lego/utils/Pitcher;->proxyUrl:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->openConnectionWithProxy(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lqunar/lego/utils/Pitcher;->conn:Ljava/net/HttpURLConnection;

    .line 92
    :goto_61
    iget-object v0, p0, Lqunar/lego/utils/Pitcher;->conn:Ljava/net/HttpURLConnection;

    const v1, 0x13880

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 93
    iget-object v0, p0, Lqunar/lego/utils/Pitcher;->conn:Ljava/net/HttpURLConnection;

    const v1, 0x13880

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 94
    iget-object v0, p0, Lqunar/lego/utils/Pitcher;->conn:Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lqunar/lego/utils/Pitcher;->conn:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 97
    iget-object v0, p0, Lqunar/lego/utils/Pitcher;->reqHeader:Lqunar/lego/utils/HttpHeader;

    invoke-virtual {v0}, Lqunar/lego/utils/HttpHeader;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_84
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractMap$SimpleEntry;

    .line 98
    iget-object v4, p0, Lqunar/lego/utils/Pitcher;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    .line 90
    :cond_a2
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lqunar/lego/utils/Pitcher;->proxyUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lqunar/lego/utils/Pitcher;->conn:Ljava/net/HttpURLConnection;

    goto :goto_61

    .line 100
    :cond_b6
    iget-object v0, p0, Lqunar/lego/utils/Pitcher;->conn:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 101
    iget-object v0, p0, Lqunar/lego/utils/Pitcher;->conn:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 102
    iget-object v0, p0, Lqunar/lego/utils/Pitcher;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_c7} :catch_1c
    .catchall {:try_start_4e .. :try_end_c7} :catchall_41

    move-result-object v1

    .line 104
    :try_start_c8
    iget-object v0, p0, Lqunar/lego/utils/Pitcher;->content:[B

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 105
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_d0
    .catchall {:try_start_c8 .. :try_end_d0} :catchall_109

    .line 108
    :try_start_d0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_126
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d3} :catch_1c
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_41

    .line 112
    :goto_d3
    :try_start_d3
    iget-object v0, p0, Lqunar/lego/utils/Pitcher;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, v2, Lqunar/lego/utils/PitcherResponse;->respcode:I

    .line 113
    new-instance v0, Lqunar/lego/utils/HttpHeader;

    iget-object v1, p0, Lqunar/lego/utils/Pitcher;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lqunar/lego/utils/HttpHeader;-><init>(Ljava/util/Map;)V

    iput-object v0, v2, Lqunar/lego/utils/PitcherResponse;->respHeader:Lqunar/lego/utils/HttpHeader;

    .line 114
    iget v0, v2, Lqunar/lego/utils/PitcherResponse;->respcode:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_11b

    .line 115
    iget-object v0, p0, Lqunar/lego/utils/Pitcher;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 116
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 117
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 119
    :goto_fd
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_10e

    .line 120
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_108} :catch_1c
    .catchall {:try_start_d3 .. :try_end_108} :catchall_41

    goto :goto_fd

    .line 107
    :catchall_109
    move-exception v0

    .line 108
    :try_start_10a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_10d
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_10d} :catch_128
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_10d} :catch_1c
    .catchall {:try_start_10a .. :try_end_10d} :catchall_41

    .line 110
    :goto_10d
    :try_start_10d
    throw v0

    .line 122
    :cond_10e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 123
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lqunar/lego/utils/Pitcher;->buildResult([B)[B

    move-result-object v0

    iput-object v0, v2, Lqunar/lego/utils/PitcherResponse;->content:[B
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_11b} :catch_1c
    .catchall {:try_start_10d .. :try_end_11b} :catchall_41

    .line 129
    :cond_11b
    iget-object v0, p0, Lqunar/lego/utils/Pitcher;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_28

    .line 130
    iget-object v0, p0, Lqunar/lego/utils/Pitcher;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_28

    .line 109
    :catch_126
    move-exception v0

    goto :goto_d3

    :catch_128
    move-exception v1

    goto :goto_10d
.end method

.method public setProxyUrl(Ljava/lang/String;)Lqunar/lego/utils/Pitcher;
    .registers 2

    .prologue
    .line 143
    iput-object p1, p0, Lqunar/lego/utils/Pitcher;->proxyUrl:Ljava/lang/String;

    .line 144
    return-object p0
.end method
