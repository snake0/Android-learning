.class public final Lcom/baidu/techain/b/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation build Lcom/mqunar/necro/agent/instrumentation/Instrumented;
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:[B

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const v1, 0x1d4c0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/baidu/techain/b/m;->b:[B

    .line 57
    iput v1, p0, Lcom/baidu/techain/b/m;->e:I

    .line 58
    iput v1, p0, Lcom/baidu/techain/b/m;->f:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/techain/b/m;->g:Z

    .line 62
    iput-object p1, p0, Lcom/baidu/techain/b/m;->a:Landroid/content/Context;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;B)V
    .registers 5

    .prologue
    const v1, 0x1d4c0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/baidu/techain/b/m;->b:[B

    .line 57
    iput v1, p0, Lcom/baidu/techain/b/m;->e:I

    .line 58
    iput v1, p0, Lcom/baidu/techain/b/m;->f:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/techain/b/m;->g:Z

    .line 66
    iput-object p1, p0, Lcom/baidu/techain/b/m;->a:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 309
    iget-object v1, p0, Lcom/baidu/techain/b/m;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/techain/b/e;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 330
    :cond_9
    :goto_9
    return-object v0

    .line 313
    :cond_a
    if-eqz p1, :cond_9

    .line 318
    if-eqz p1, :cond_9

    .line 320
    :try_start_e
    const-string v1, "gzip"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 321
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/techain/b/m;->g:Z

    .line 325
    :goto_1d
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_9

    .line 323
    :cond_22
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/techain/b/m;->g:Z
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_25} :catch_26

    goto :goto_1d

    .line 328
    :catch_26
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_9
.end method

.method private a([BLjava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0xc8

    .line 249
    if-nez p2, :cond_6

    .line 284
    :goto_5
    return-object v0

    .line 254
    :cond_6
    if-nez p1, :cond_47

    .line 255
    :try_start_8
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 256
    if-eq v1, v3, :cond_24

    .line 257
    new-instance v2, Landroid/accounts/NetworkErrorException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_18
    .catch Landroid/accounts/NetworkErrorException; {:try_start_8 .. :try_end_18} :catch_42
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_18} :catch_87
    .catchall {:try_start_8 .. :try_end_18} :catchall_98

    .line 286
    :catch_18
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1c
    :try_start_1c
    throw v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1d

    .line 293
    :catchall_1d
    move-exception v0

    .line 294
    :goto_1e
    if-eqz v1, :cond_23

    .line 295
    :try_start_20
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_23} :catch_96

    .line 299
    :cond_23
    :goto_23
    throw v0

    .line 259
    :cond_24
    :try_start_24
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "gzip"

    .line 261
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 262
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/techain/b/m;->g:Z

    .line 266
    :goto_39
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_5

    .line 264
    :cond_3e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/techain/b/m;->g:Z
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_41} :catch_18
    .catch Landroid/accounts/NetworkErrorException; {:try_start_24 .. :try_end_41} :catch_42
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_41} :catch_87
    .catchall {:try_start_24 .. :try_end_41} :catchall_98

    goto :goto_39

    .line 288
    :catch_42
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_46
    :try_start_46
    throw v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_1d

    .line 269
    :cond_47
    :try_start_47
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_50} :catch_18
    .catch Landroid/accounts/NetworkErrorException; {:try_start_47 .. :try_end_50} :catch_42
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_50} :catch_87
    .catchall {:try_start_47 .. :try_end_50} :catchall_98

    .line 271
    :try_start_50
    invoke-virtual {v1, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 272
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 274
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 275
    if-eq v0, v3, :cond_68

    .line 276
    new-instance v2, Landroid/accounts/NetworkErrorException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 286
    :catch_66
    move-exception v0

    goto :goto_1c

    .line 279
    :cond_68
    const-string v0, "gzip"

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/techain/b/m;->g:Z

    .line 284
    :goto_77
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_7a} :catch_66
    .catch Landroid/accounts/NetworkErrorException; {:try_start_50 .. :try_end_7a} :catch_85
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_7a} :catch_9d
    .catchall {:try_start_50 .. :try_end_7a} :catchall_1d

    move-result-object v0

    .line 295
    :try_start_7b
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_5

    :catch_7f
    move-exception v1

    goto :goto_5

    .line 282
    :cond_81
    const/4 v0, 0x0

    :try_start_82
    iput-boolean v0, p0, Lcom/baidu/techain/b/m;->g:Z
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_84} :catch_66
    .catch Landroid/accounts/NetworkErrorException; {:try_start_82 .. :try_end_84} :catch_85
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_84} :catch_9d
    .catchall {:try_start_82 .. :try_end_84} :catchall_1d

    goto :goto_77

    .line 288
    :catch_85
    move-exception v0

    goto :goto_46

    .line 290
    :catch_87
    move-exception v1

    :goto_88
    :try_start_88
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 291
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_91
    .catchall {:try_start_88 .. :try_end_91} :catchall_91

    .line 293
    :catchall_91
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1e

    :catch_96
    move-exception v1

    goto :goto_23

    :catchall_98
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1e

    .line 290
    :catch_9d
    move-exception v0

    move-object v0, v1

    goto :goto_88
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 343
    if-nez p1, :cond_a

    .line 344
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "InputStream"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_a
    :try_start_a
    invoke-static {p1}, Lcom/baidu/techain/b/m;->b(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 349
    if-nez v0, :cond_22

    .line 350
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "responseBytes"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_18} :catch_18

    .line 361
    :catch_18
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 362
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 352
    :cond_22
    :try_start_22
    iget-boolean v1, p0, Lcom/baidu/techain/b/m;->g:Z

    if-eqz v1, :cond_40

    .line 2043
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2044
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2046
    invoke-static {v1, v2}, Lcom/baidu/techain/b/j;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 2047
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 2048
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 2049
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2050
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 355
    :cond_40
    if-eqz v0, :cond_48

    .line 356
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    .line 358
    :cond_48
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_4e} :catch_18
.end method

.method private a()Ljava/net/HttpURLConnection;
    .registers 11

    .prologue
    const/4 v0, -0x1

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 162
    iget-object v1, p0, Lcom/baidu/techain/b/m;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/baidu/techain/b/m;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 163
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 165
    :cond_1a
    iget-object v1, p0, Lcom/baidu/techain/b/m;->c:Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/baidu/techain/b/m;->c:Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 166
    const-string v1, "POST"

    iput-object v1, p0, Lcom/baidu/techain/b/m;->c:Ljava/lang/String;

    .line 169
    :cond_32
    new-instance v2, Ljava/net/URL;

    iget-object v1, p0, Lcom/baidu/techain/b/m;->d:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/baidu/techain/b/m;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/techain/b/e;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_211

    .line 176
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-lt v1, v4, :cond_1a9

    .line 177
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v4, "http.proxyHost"

    invoke-virtual {v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v4

    const-string v6, "http.proxyPort"

    invoke-virtual {v4, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1a3

    .line 194
    :goto_61
    if-eqz v1, :cond_1b7

    if-lez v0, :cond_1b7

    .line 195
    invoke-static {v1, v0}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v1, v4, v0}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 198
    invoke-virtual {v2, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->openConnectionWithProxy(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 203
    :goto_7b
    instance-of v0, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_e1

    move-object v0, v1

    .line 204
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 1098
    :try_start_82
    const-string v2, "AndroidCAStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_87} :catch_1c4

    move-result-object v2

    .line 1099
    const/4 v4, 0x0

    const/4 v6, 0x0

    :try_start_8a
    invoke-virtual {v2, v4, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8d} :catch_20f

    move-object v4, v2

    .line 1117
    :goto_8e
    if-eqz v4, :cond_b9

    .line 1120
    :try_start_90
    const-string v2, "com.android.org.conscrypt.TrustManagerImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_95} :catch_1f9

    move-result-object v2

    .line 1125
    :goto_96
    if-nez v2, :cond_9e

    .line 1127
    :try_start_98
    const-string v6, "org.apache.harmony.xnet.provider.jsse.TrustManagerImpl"

    .line 1128
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_9d} :catch_206

    move-result-object v2

    .line 1134
    :cond_9e
    :goto_9e
    if-eqz v2, :cond_b9

    .line 1135
    const/4 v3, 0x1

    :try_start_a1
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/security/KeyStore;

    aput-object v7, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1136
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    move-object v3, v2

    .line 1140
    :cond_b9
    if-eqz v3, :cond_e1

    .line 1141
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 1142
    const/4 v4, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljavax/net/ssl/TrustManager;

    const/4 v7, 0x0

    new-instance v8, Lcom/baidu/techain/b/m$a;

    invoke-direct {v8, p0, v3}, Lcom/baidu/techain/b/m$a;-><init>(Lcom/baidu/techain/b/m;Ljavax/net/ssl/X509TrustManager;)V

    aput-object v8, v6, v7

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v4, v6, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 1143
    sget-object v3, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 1144
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_e1
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_e1} :catch_200

    .line 206
    :cond_e1
    :goto_e1
    iget-object v0, p0, Lcom/baidu/techain/b/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 209
    const-string v0, "POST"

    iget-object v2, p0, Lcom/baidu/techain/b/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 210
    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 213
    :cond_f6
    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 214
    iget v0, p0, Lcom/baidu/techain/b/m;->e:I

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 215
    iget v0, p0, Lcom/baidu/techain/b/m;->f:I

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 218
    iget-object v0, p0, Lcom/baidu/techain/b/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/b/e;->g(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 219
    aget-object v2, v0, v5

    .line 220
    const-string v0, "techain"

    .line 221
    const-string v3, "1"

    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_119

    .line 222
    const-string v0, "eos"

    .line 224
    :cond_119
    const-string v3, "User-Agent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/techain/b/m;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/techain/b/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/3.1.6.1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "Pragma"

    const-string v2, "no-cache"

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v0, "Accept"

    const-string v2, "*/*"

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v0, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v0, "Accept-Encoding"

    const-string v2, "gzip,deflate"

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v0, "Accept-Language"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 231
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "x-device-id"

    iget-object v2, p0, Lcom/baidu/techain/b/m;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/techain/b/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/techain/b/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-object v1

    .line 183
    :cond_1a3
    :try_start_1a3
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1a6
    .catch Ljava/lang/Throwable; {:try_start_1a3 .. :try_end_1a6} :catch_20c

    move-result v0

    goto/16 :goto_61

    .line 189
    :cond_1a9
    iget-object v0, p0, Lcom/baidu/techain/b/m;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 190
    iget-object v0, p0, Lcom/baidu/techain/b/m;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v0

    goto/16 :goto_61

    .line 200
    :cond_1b7
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    goto/16 :goto_7b

    :catch_1c4
    move-exception v2

    move-object v2, v3

    .line 1102
    :goto_1c6
    :try_start_1c6
    const-string v4, "javax.net.ssl.trustStore"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1103
    const-string v4, "javax.net.ssl.trustStorePassword"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1105
    if-nez v4, :cond_1f0

    move-object v4, v3

    .line 1107
    :goto_1d5
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 1108
    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1109
    invoke-virtual {v2, v7, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1110
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    move-object v4, v2

    .line 1113
    goto/16 :goto_8e

    .line 1105
    :cond_1f0
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C
    :try_end_1f3
    .catch Ljava/lang/Throwable; {:try_start_1c6 .. :try_end_1f3} :catch_1f5

    move-result-object v4

    goto :goto_1d5

    :catch_1f5
    move-exception v4

    move-object v4, v2

    goto/16 :goto_8e

    .line 1122
    :catch_1f9
    move-exception v2

    move-object v2, v3

    :try_start_1fb
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_1fe
    .catch Ljava/lang/Throwable; {:try_start_1fb .. :try_end_1fe} :catch_200

    goto/16 :goto_96

    .line 1148
    :catch_200
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto/16 :goto_e1

    .line 1130
    :catch_206
    move-exception v6

    :try_start_207
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_20a
    .catch Ljava/lang/Throwable; {:try_start_207 .. :try_end_20a} :catch_200

    goto/16 :goto_9e

    .line 185
    :catch_20c
    move-exception v4

    goto/16 :goto_61

    :catch_20f
    move-exception v4

    goto :goto_1c6

    :cond_211
    move v0, v5

    move-object v1, v3

    goto/16 :goto_61
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 89
    iput-object p1, p0, Lcom/baidu/techain/b/m;->c:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/baidu/techain/b/m;->d:Ljava/lang/String;

    .line 91
    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 519
    const/4 v2, 0x0

    .line 520
    iget-boolean v1, p0, Lcom/baidu/techain/b/m;->g:Z

    if-eqz v1, :cond_c

    .line 522
    :try_start_6
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_f

    move-object p1, v1

    .line 528
    :cond_c
    :goto_c
    if-nez p1, :cond_14

    .line 541
    :cond_e
    :goto_e
    return v0

    .line 524
    :catch_f
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_c

    .line 531
    :cond_14
    :try_start_14
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1e} :catch_59
    .catchall {:try_start_14 .. :try_end_1e} :catchall_4a

    .line 533
    const/16 v2, 0x400

    :try_start_20
    new-array v2, v2, [B

    .line 534
    :goto_22
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_40

    .line 535
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 536
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_30} :catch_31
    .catchall {:try_start_20 .. :try_end_30} :catchall_57

    goto :goto_22

    .line 540
    :catch_31
    move-exception v2

    :goto_32
    :try_start_32
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_57

    .line 543
    if-eqz v1, :cond_e

    .line 545
    :try_start_37
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_e

    .line 547
    :catch_3b
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_e

    .line 545
    :cond_40
    :try_start_40
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_45

    .line 538
    :goto_43
    const/4 v0, 0x1

    goto :goto_e

    .line 547
    :catch_45
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_43

    .line 543
    :catchall_4a
    move-exception v0

    move-object v1, v2

    :goto_4c
    if-eqz v1, :cond_51

    .line 545
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    .line 548
    :cond_51
    :goto_51
    throw v0

    .line 547
    :catch_52
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_51

    .line 543
    :catchall_57
    move-exception v0

    goto :goto_4c

    .line 540
    :catch_59
    move-exception v1

    move-object v1, v2

    goto :goto_32
.end method

.method private static b(Ljava/io/InputStream;)[B
    .registers 5

    .prologue
    .line 423
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 424
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 425
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    .line 426
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 429
    :cond_15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 430
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 431
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 444
    invoke-static {}, Lcom/baidu/techain/b/s;->a()V

    .line 446
    :try_start_4
    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_34

    .line 451
    :try_start_7
    const-string v0, "GET"

    invoke-direct {p0, v0, p1}, Lcom/baidu/techain/b/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-direct {p0}, Lcom/baidu/techain/b/m;->a()Ljava/net/HttpURLConnection;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_27

    move-result-object v1

    .line 453
    const/4 v0, 0x0

    :try_start_11
    invoke-direct {p0, v0, v1}, Lcom/baidu/techain/b/m;->a([BLjava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2

    .line 454
    invoke-direct {p0, v2}, Lcom/baidu/techain/b/m;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_39

    move-result-object v0

    .line 456
    if-eqz v2, :cond_1e

    .line 457
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 460
    :cond_1e
    if-eqz v1, :cond_23

    .line 461
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_34

    .line 468
    :cond_23
    invoke-static {}, Lcom/baidu/techain/b/s;->b()V

    .line 466
    return-object v0

    .line 456
    :catchall_27
    move-exception v0

    move-object v1, v2

    :goto_29
    if-eqz v2, :cond_2e

    .line 457
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 460
    :cond_2e
    if-eqz v1, :cond_33

    .line 461
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 462
    :cond_33
    throw v0
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_34

    .line 468
    :catchall_34
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/s;->b()V

    throw v0

    .line 456
    :catchall_39
    move-exception v0

    goto :goto_29
.end method

.method public final a(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 380
    invoke-static {}, Lcom/baidu/techain/b/s;->a()V

    .line 383
    :try_start_4
    const-string v0, "POST"

    invoke-direct {p0, v0, p1}, Lcom/baidu/techain/b/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_30

    .line 388
    :try_start_9
    invoke-direct {p0}, Lcom/baidu/techain/b/m;->a()Ljava/net/HttpURLConnection;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_23

    move-result-object v1

    .line 389
    :try_start_d
    invoke-direct {p0, p2, v1}, Lcom/baidu/techain/b/m;->a([BLjava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2

    .line 390
    invoke-direct {p0, v2}, Lcom/baidu/techain/b/m;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_35

    move-result-object v0

    .line 393
    if-eqz v2, :cond_1a

    .line 394
    :try_start_17
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 397
    :cond_1a
    if-eqz v1, :cond_1f

    .line 398
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_30

    .line 406
    :cond_1f
    invoke-static {}, Lcom/baidu/techain/b/s;->b()V

    .line 404
    return-object v0

    .line 393
    :catchall_23
    move-exception v0

    move-object v1, v2

    :goto_25
    if-eqz v2, :cond_2a

    .line 394
    :try_start_27
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 397
    :cond_2a
    if-eqz v1, :cond_2f

    .line 398
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 399
    :cond_2f
    throw v0
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_30

    .line 406
    :catchall_30
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/s;->b()V

    throw v0

    .line 393
    :catchall_35
    move-exception v0

    goto :goto_25
.end method

.method public final a(Ljava/lang/String;Ljava/io/File;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 474
    invoke-static {}, Lcom/baidu/techain/b/s;->a()V

    .line 476
    :try_start_5
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 477
    iget-object v2, p0, Lcom/baidu/techain/b/m;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/techain/b/e;->f(Landroid/content/Context;)Z
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_7e

    move-result v2

    if-nez v2, :cond_14

    .line 512
    invoke-static {}, Lcom/baidu/techain/b/s;->b()V

    .line 508
    :goto_13
    return v0

    .line 481
    :cond_14
    :try_start_14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_7e

    move-result v2

    if-eqz v2, :cond_1e

    .line 512
    invoke-static {}, Lcom/baidu/techain/b/s;->b()V

    goto :goto_13

    .line 485
    :cond_1e
    :try_start_1e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "f= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_7e

    .line 489
    :try_start_2b
    const-string v2, "GET"

    invoke-direct {p0, v2, p1}, Lcom/baidu/techain/b/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-direct {p0}, Lcom/baidu/techain/b/m;->a()Ljava/net/HttpURLConnection;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_33} :catch_53
    .catchall {:try_start_2b .. :try_end_33} :catchall_6e

    move-result-object v2

    .line 491
    :try_start_34
    invoke-direct {p0, v2}, Lcom/baidu/techain/b/m;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_37} :catch_98
    .catchall {:try_start_34 .. :try_end_37} :catchall_8b

    move-result-object v3

    .line 492
    :try_start_38
    invoke-direct {p0, v3, p2}, Lcom/baidu/techain/b/m;->a(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_9d
    .catchall {:try_start_38 .. :try_end_3b} :catchall_90

    move-result v1

    .line 498
    if-eqz v3, :cond_41

    .line 499
    :try_start_3e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 502
    :cond_41
    if-eqz v2, :cond_46

    .line 503
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_46} :catch_4b
    .catchall {:try_start_3e .. :try_end_46} :catchall_7e

    .line 512
    :cond_46
    invoke-static {}, Lcom/baidu/techain/b/s;->b()V

    move v0, v1

    .line 492
    goto :goto_13

    .line 507
    :catch_4b
    move-exception v1

    :try_start_4c
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_7e

    .line 512
    invoke-static {}, Lcom/baidu/techain/b/s;->b()V

    goto :goto_13

    .line 494
    :catch_53
    move-exception v2

    move-object v2, v1

    :goto_55
    :try_start_55
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_92

    .line 498
    if-eqz v2, :cond_5d

    .line 499
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 502
    :cond_5d
    if-eqz v1, :cond_62

    .line 503
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_62} :catch_66
    .catchall {:try_start_5a .. :try_end_62} :catchall_7e

    .line 512
    :cond_62
    invoke-static {}, Lcom/baidu/techain/b/s;->b()V

    goto :goto_13

    .line 507
    :catch_66
    move-exception v1

    :try_start_67
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_7e

    .line 512
    invoke-static {}, Lcom/baidu/techain/b/s;->b()V

    goto :goto_13

    .line 497
    :catchall_6e
    move-exception v2

    move-object v3, v1

    move-object v4, v1

    move-object v1, v2

    move-object v2, v4

    .line 498
    :goto_73
    if-eqz v3, :cond_78

    .line 499
    :try_start_75
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 502
    :cond_78
    if-eqz v2, :cond_7d

    .line 503
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_7d} :catch_83
    .catchall {:try_start_75 .. :try_end_7d} :catchall_7e

    .line 508
    :cond_7d
    :try_start_7d
    throw v1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7e

    .line 512
    :catchall_7e
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/s;->b()V

    throw v0

    .line 507
    :catch_83
    move-exception v1

    :try_start_84
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_7e

    .line 512
    invoke-static {}, Lcom/baidu/techain/b/s;->b()V

    goto :goto_13

    .line 497
    :catchall_8b
    move-exception v3

    move-object v4, v3

    move-object v3, v1

    move-object v1, v4

    goto :goto_73

    :catchall_90
    move-exception v1

    goto :goto_73

    :catchall_92
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_73

    .line 494
    :catch_98
    move-exception v3

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_55

    :catch_9d
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_55
.end method
